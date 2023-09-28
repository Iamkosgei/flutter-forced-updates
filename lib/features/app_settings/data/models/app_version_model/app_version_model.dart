import 'package:forced_updates_demo/features/app_settings/domain/entities/app_version/app_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_model.freezed.dart';
part 'app_version_model.g.dart';

@freezed
class AppVersionModel with _$AppVersionModel {
  factory AppVersionModel({
    @JsonKey(name: 'min_ios_ver') String? minIosVer,
    @JsonKey(name: 'current_ios_ver') String? currentIosVer,
    @JsonKey(name: 'min_android_ver') String? minAndroidVer,
    @JsonKey(name: 'current_android_ver') String? currentAndroidVer,
    @JsonKey(name: 'update_message') String? updateMessage,
  }) = _AppVersionModel;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);

  AppVersionModel._();

  AppVersion toDomain() {
    return AppVersion(
      minIosVer: int.tryParse(minIosVer ?? '0'),
      currentIosVer: int.tryParse(currentIosVer ?? '0'),
      minAndroidVer: int.tryParse(minAndroidVer ?? '0'),
      currentAndroidVer: int.tryParse(currentAndroidVer ?? '0'),
      updateMessage: updateMessage,
    );
  }
}
