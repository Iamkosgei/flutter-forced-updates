import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_failure.freezed.dart';

@freezed
abstract class AppSettingsFailure with _$AppSettingsFailure {
  const factory AppSettingsFailure.serverError() = ServerError;
}
