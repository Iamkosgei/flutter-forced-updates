import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/core/logs/bloc_observer.dart';

void setUpLoging() {
  if (kDebugMode) {
    Bloc.observer = MyBlocObserver();
  }
}
