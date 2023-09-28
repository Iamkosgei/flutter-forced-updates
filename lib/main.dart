import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/di/get_it.dart';
import 'package:forced_updates_demo/features/app_settings/presentation/cubits/cubit/app_version_cubit.dart';
import 'package:forced_updates_demo/features/food/presentation/pages/meals_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AppVersionCubit>()..fetchAppVersion(),
      child: MaterialApp(
        title: 'Forced Updates Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, brightness: Brightness.dark),
          useMaterial3: true,
          brightness: Brightness.dark,
        ),
        home: const MealsPage(),
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
