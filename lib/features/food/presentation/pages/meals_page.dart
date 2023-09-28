import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/di/get_it.dart';
import 'package:forced_updates_demo/features/app_settings/presentation/cubits/cubit/app_version_cubit.dart';
import 'package:forced_updates_demo/features/food/presentation/cubits/meals_cubit/meals_cubit.dart';
import 'package:forced_updates_demo/features/food/presentation/widgets/meals_page-body.dart';
import 'package:native_updater/native_updater.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MealsCubit>()..getMeals(),
      child: BlocListener<AppVersionCubit, AppVersionState>(
        listener: (context, state) {
          state.whenOrNull(loaded: (
            bool optionalUpdate,
            bool forceUpdate,
            String message,
          ) {
            if (forceUpdate || optionalUpdate) {
              NativeUpdater.displayUpdateAlert(
                context,
                forceUpdate: forceUpdate,
                appStoreUrl:
                    'https://apps.apple.com/us/app/chick-fil-a/id488818252',
                iOSDescription: message,
              );
            }
          });
        },
        child: const MealsPageBody(),
      ),
    );
  }
}
