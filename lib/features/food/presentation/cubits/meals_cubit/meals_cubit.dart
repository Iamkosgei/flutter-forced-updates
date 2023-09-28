import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/features/food/domain/entities/meal/meal.dart';
import 'package:forced_updates_demo/features/food/domain/failures/meals_failure.dart';
import 'package:forced_updates_demo/features/food/domain/use_cases/get_meals_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'meals_state.dart';
part 'meals_cubit.freezed.dart';

@injectable
class MealsCubit extends Cubit<MealsState> {
  final GetMealsUseCase getMealsUseCase;
  MealsCubit(this.getMealsUseCase) : super(const MealsState.initial());

  Future<void> getMeals() async {
    emit(const MealsState.busy());

    final meals = await getMealsUseCase.call();

    emit(meals.fold(
      (l) => MealsState.error(l),
      (r) => MealsState.loaded(r),
    ));
  }
}
