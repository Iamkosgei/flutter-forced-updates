// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealsModelImpl _$$MealsModelImplFromJson(Map<String, dynamic> json) =>
    _$MealsModelImpl(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MealsModelImplToJson(_$MealsModelImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
