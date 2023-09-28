import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.freezed.dart';

@freezed
class Meal with _$Meal {
  factory Meal({
    String? name,
    String? image,
    String? id,
  }) = _Meal;
}
