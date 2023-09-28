part of 'app_version_cubit.dart';

@freezed
class AppVersionState with _$AppVersionState {
  const factory AppVersionState.initial() = _Initial;
  const factory AppVersionState.busy() = Busy;
  const factory AppVersionState.error({required AppSettingsFailure failure}) =
      Error;

  const factory AppVersionState.loaded({
    required bool optionalUpdate,
    required bool forceUpdate,
    required String message,
  }) = Loaded;
}
