import 'package:dartz/dartz.dart';
import 'package:forced_updates_demo/features/food/domain/entities/meal/meal.dart';
import 'package:forced_updates_demo/features/food/domain/failures/meals_failure.dart';
import 'package:forced_updates_demo/features/food/domain/interfaces/meals_interface.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMealsUseCase {
  final MealsInterface mealsInterface;
  GetMealsUseCase(this.mealsInterface);
  Future<Either<MealsFailure, List<Meal>>> call() async {
    return mealsInterface.getMeals();
  }
}
