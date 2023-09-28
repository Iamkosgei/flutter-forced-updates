import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forced_updates_demo/features/app_settings/domain/entities/app_version/app_version.dart';
import 'package:forced_updates_demo/features/app_settings/domain/failures/app_settings_failure.dart';
import 'package:forced_updates_demo/features/app_settings/domain/use_cases/get_app_version_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'app_version_state.dart';
part 'app_version_cubit.freezed.dart';

@injectable
class AppVersionCubit extends Cubit<AppVersionState> {
  final GetAppVersionUseCase _getAppVersionUseCase;

  AppVersionCubit(this._getAppVersionUseCase)
      : super(const AppVersionState.initial());

  Future<void> fetchAppVersion() async {
    emit(const AppVersionState.busy());

    final appVersion = await _getAppVersionUseCase.call();
    final userInstalledVersion = await _getUserAppVersion();

    emit(
      appVersion.fold(
        (failure) => AppVersionState.error(failure: failure),
        (result) => _createLoadedState(result, userInstalledVersion),
      ),
    );
  }

  Future<int> _getUserAppVersion() async {
    final info = await PackageInfo.fromPlatform();
    return int.parse(info.version.trim().replaceAll('.', ''));
  }

  AppVersionState _createLoadedState(
      AppVersion result, int userInstalledVersion) {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final currentVersion =
        isAndroid ? result.currentAndroidVer : result.currentIosVer;
    final minVersion = isAndroid ? result.minAndroidVer : result.minIosVer;

    return AppVersionState.loaded(
      optionalUpdate:
          _hasOptionalUpdate(userInstalledVersion, currentVersion ?? 0),
      forceUpdate: _hasForcedUpdates(userInstalledVersion, minVersion ?? 0),
      message: result.updateMessage ?? '',
    );
  }

  bool _hasOptionalUpdate(int installedVersion, int currentAppVersion) {
    return currentAppVersion > installedVersion;
  }

  bool _hasForcedUpdates(int installedVersion, int minimumVersion) {
    return minimumVersion > installedVersion;
  }
}
