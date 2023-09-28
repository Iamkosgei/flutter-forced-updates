import 'package:dartz/dartz.dart';
import 'package:forced_updates_demo/features/food/data/data_provider/remote_meals_provider.dart';
import 'package:forced_updates_demo/features/food/domain/entities/meal/meal.dart';
import 'package:forced_updates_demo/features/food/domain/failures/meals_failure.dart';
import 'package:forced_updates_demo/features/food/domain/interfaces/meals_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MealsInterface)
class MealsRepository implements MealsInterface {
  final RemoteMealsProvider remoteMealsProvider;

  MealsRepository(this.remoteMealsProvider);
  @override
  Future<Either<MealsFailure, List<Meal>>> getMeals() async {
    try {
      final foodsModel = await remoteMealsProvider.getFoods();
      final foodDomain = foodsModel.map((e) => e.toDomain()).toList();
      return right(foodDomain);
    } catch (e) {
      return left(const MealsFailure.serverError());
    }
  }
}
