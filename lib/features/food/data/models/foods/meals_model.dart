import 'package:freezed_annotation/freezed_annotation.dart';

import 'meal_model.dart';

part 'meals_model.freezed.dart';
part 'meals_model.g.dart';

@freezed
class MealsModel with _$MealsModel {
  factory MealsModel({
    List<MealModel>? meals,
  }) = _MealsModel;

  factory MealsModel.fromJson(Map<String, dynamic> json) =>
      _$MealsModelFromJson(json);
}
