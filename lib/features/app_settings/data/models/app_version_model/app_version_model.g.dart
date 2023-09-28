// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppVersionModelImpl _$$AppVersionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppVersionModelImpl(
      minIosVer: json['min_ios_ver'] as String?,
      currentIosVer: json['current_ios_ver'] as String?,
      minAndroidVer: json['min_android_ver'] as String?,
      currentAndroidVer: json['current_android_ver'] as String?,
      updateMessage: json['update_message'] as String?,
    );

Map<String, dynamic> _$$AppVersionModelImplToJson(
        _$AppVersionModelImpl instance) =>
    <String, dynamic>{
      'min_ios_ver': instance.minIosVer,
      'current_ios_ver': instance.currentIosVer,
      'min_android_ver': instance.minAndroidVer,
      'current_android_ver': instance.currentAndroidVer,
      'update_message': instance.updateMessage,
    };
