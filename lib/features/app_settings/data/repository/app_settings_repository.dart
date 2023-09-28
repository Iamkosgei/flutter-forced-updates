import 'package:dartz/dartz.dart';
import 'package:forced_updates_demo/features/app_settings/data/data_provider/remote_app_settings_provider.dart';
import 'package:forced_updates_demo/features/app_settings/domain/entities/app_version/app_version.dart';
import 'package:forced_updates_demo/features/app_settings/domain/failures/app_settings_failure.dart';
import 'package:forced_updates_demo/features/app_settings/domain/interfaces/app_settings_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppSettingsInterface)
class AppSettingsRepository implements AppSettingsInterface {
  final RemoteAppSettingsProvider remoteAppSettingsProvider;

  AppSettingsRepository(this.remoteAppSettingsProvider);
  @override
  Future<Either<AppSettingsFailure, AppVersion>> getAppVersion() async {
    try {
      final appVersion = await remoteAppSettingsProvider.getAppVersion();
      return right(appVersion.toDomain());
    } catch (e) {
      return left(const AppSettingsFailure.serverError());
    }
  }
}
