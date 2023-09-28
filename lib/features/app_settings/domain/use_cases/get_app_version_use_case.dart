import 'package:dartz/dartz.dart';
import 'package:forced_updates_demo/features/app_settings/domain/entities/app_version/app_version.dart';
import 'package:forced_updates_demo/features/app_settings/domain/failures/app_settings_failure.dart';
import 'package:forced_updates_demo/features/app_settings/domain/interfaces/app_settings_interface.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAppVersionUseCase {
  final AppSettingsInterface appSettingsInterface;
  GetAppVersionUseCase(this.appSettingsInterface);
  Future<Either<AppSettingsFailure, AppVersion>> call() async {
    return appSettingsInterface.getAppVersion();
  }
}
