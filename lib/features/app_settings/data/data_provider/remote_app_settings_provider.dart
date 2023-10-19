import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:forced_updates_demo/features/app_settings/data/models/app_version_model/app_version_model.dart';
import 'package:injectable/injectable.dart';

abstract class RemoteAppSettingsProvider {
  Future<AppVersionModel> getAppVersion();
}

@Injectable(as: RemoteAppSettingsProvider)
class RemoteAppSettingsProviderImpl implements RemoteAppSettingsProvider {
  @override
  Future<AppVersionModel> getAppVersion() async {
    final firebaseRemoteConfig = FirebaseRemoteConfig.instance;

    await firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 60),
        minimumFetchInterval: Duration.zero,
      ),
    );

    await firebaseRemoteConfig.fetchAndActivate();
    final appVersionStr = firebaseRemoteConfig.getString('app_versions');

    return AppVersionModel.fromJson(
      jsonDecode(appVersionStr) as Map<String, dynamic>,
    );
  }
}
