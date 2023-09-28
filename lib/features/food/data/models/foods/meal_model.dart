import 'package:forced_updates_demo/features/food/domain/entities/meal/meal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_model.freezed.dart';
part 'meal_model.g.dart';

@freezed
class MealModel with _$MealModel {
  factory MealModel({
    String? strMeal,
    String? strMealThumb,
    String? idMeal,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);

  MealModel._();

  Meal toDomain() {
    return Meal(name: strMeal, image: strMealThumb, id: idMeal);
  }
}
