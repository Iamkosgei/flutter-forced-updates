import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/features/food/domain/failures/meals_failure.dart';
import 'package:forced_updates_demo/features/food/presentation/cubits/meals_cubit/meals_cubit.dart';

class MealsError extends StatelessWidget {
  final MealsFailure failure;
  const MealsError({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          failure.when(
              cacheUserDataError: () => const Text('Error caching meals'),
              serverError: () => const Text('Error fetching meals')),
          const SizedBox(
            height: 4,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<MealsCubit>().getMeals();
            },
            child: const Text('Retry'),
          )
        ],
      ),
    );
  }
}
