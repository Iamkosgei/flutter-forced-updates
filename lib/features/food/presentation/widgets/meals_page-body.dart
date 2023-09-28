import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/features/food/presentation/cubits/meals_cubit/meals_cubit.dart';
import 'package:forced_updates_demo/features/food/presentation/widgets/meal_item.dart';
import 'package:forced_updates_demo/features/food/presentation/widgets/meals_error.dart';
import 'package:forced_updates_demo/features/food/presentation/widgets/meals_loading.dart';

class MealsPageBody extends StatelessWidget {
  const MealsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MealsCubit, MealsState>(
        builder: (context, state) {
          return state.when(
            initial: SizedBox.shrink,
            busy: () => const ListItemShimmer(),
            error: (e) => MealsError(
              failure: e,
            ),
            loaded: (meals) => ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) => MealItem(
                meal: meals[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
