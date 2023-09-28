import 'package:forced_updates_demo/core/network/rest_client.dart';
import 'package:forced_updates_demo/features/food/data/models/foods/meal_model.dart';
import 'package:injectable/injectable.dart';

abstract class RemoteMealsProvider {
  Future<List<MealModel>> getFoods();
}

@Injectable(as: RemoteMealsProvider)
class RemoteMealsProviderImpl implements RemoteMealsProvider {
  final RestClient restClient;

  RemoteMealsProviderImpl(this.restClient);
  @override
  Future<List<MealModel>> getFoods() async {
    final foods = await restClient.getFoods();
    return foods.meals ?? <MealModel>[];
  }
}
