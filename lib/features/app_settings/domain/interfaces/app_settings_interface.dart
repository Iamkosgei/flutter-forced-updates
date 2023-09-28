import 'package:dartz/dartz.dart';
import 'package:forced_updates_demo/features/app_settings/domain/entities/app_version/app_version.dart';
import 'package:forced_updates_demo/features/app_settings/domain/failures/app_settings_failure.dart';

abstract class AppSettingsInterface {
  Future<Either<AppSettingsFailure, AppVersion>> getAppVersion();
}
