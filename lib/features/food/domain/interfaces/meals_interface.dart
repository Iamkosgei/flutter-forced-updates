import 'package:dartz/dartz.dart';
import 'package:forced_updates_demo/features/food/domain/entities/meal/meal.dart';
import 'package:forced_updates_demo/features/food/domain/failures/meals_failure.dart';

abstract class MealsInterface {
  Future<Either<MealsFailure, List<Meal>>> getMeals();
}
