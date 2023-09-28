import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  factory AppVersion({
    int? minIosVer,
    int? currentIosVer,
    int? minAndroidVer,
    int? currentAndroidVer,
    String? updateMessage,
  }) = _AppVersion;
}
