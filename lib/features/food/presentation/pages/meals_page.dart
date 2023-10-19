import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/di/get_it.dart';
import 'package:forced_updates_demo/features/food/presentation/cubits/meals_cubit/meals_cubit.dart';
import 'package:forced_updates_demo/features/food/presentation/widgets/meals_page-body.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MealsCubit>()..getMeals(),
      child: const MealsPageBody(),
    );
  }
}
