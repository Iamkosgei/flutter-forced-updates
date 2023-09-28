import 'package:forced_updates_demo/core/network/end_points.dart';
import 'package:forced_updates_demo/features/food/data/models/foods/meals_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'rest_client.g.dart';

@injectable
@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;

  @GET(foodUrl)
  Future<MealsModel> getFoods();
}
