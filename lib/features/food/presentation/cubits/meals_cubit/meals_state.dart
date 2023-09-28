part of 'meals_cubit.dart';

@freezed
class MealsState with _$MealsState {
  const factory MealsState.initial() = _Initial;
  const factory MealsState.busy() = Busy;
  const factory MealsState.error(MealsFailure failure) = Error;
  const factory MealsState.loaded(List<Meal> meals) = Loaded;
}
