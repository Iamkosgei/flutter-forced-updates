// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) {
  return _AppVersionModel.fromJson(json);
}

/// @nodoc
mixin _$AppVersionModel {
  @JsonKey(name: 'min_ios_ver')
  String? get minIosVer => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_ios_ver')
  String? get currentIosVer => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_android_ver')
  String? get minAndroidVer => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_android_ver')
  String? get currentAndroidVer => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_message')
  String? get updateMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionModelCopyWith<AppVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionModelCopyWith<$Res> {
  factory $AppVersionModelCopyWith(
          AppVersionModel value, $Res Function(AppVersionModel) then) =
      _$AppVersionModelCopyWithImpl<$Res, AppVersionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min_ios_ver') String? minIosVer,
      @JsonKey(name: 'current_ios_ver') String? currentIosVer,
      @JsonKey(name: 'min_android_ver') String? minAndroidVer,
      @JsonKey(name: 'current_android_ver') String? currentAndroidVer,
      @JsonKey(name: 'update_message') String? updateMessage});
}

/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res, $Val extends AppVersionModel>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minIosVer = freezed,
    Object? currentIosVer = freezed,
    Object? minAndroidVer = freezed,
    Object? currentAndroidVer = freezed,
    Object? updateMessage = freezed,
  }) {
    return _then(_value.copyWith(
      minIosVer: freezed == minIosVer
          ? _value.minIosVer
          : minIosVer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentIosVer: freezed == currentIosVer
          ? _value.currentIosVer
          : currentIosVer // ignore: cast_nullable_to_non_nullable
              as String?,
      minAndroidVer: freezed == minAndroidVer
          ? _value.minAndroidVer
          : minAndroidVer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAndroidVer: freezed == currentAndroidVer
          ? _value.currentAndroidVer
          : currentAndroidVer // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMessage: freezed == updateMessage
          ? _value.updateMessage
          : updateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppVersionModelImplCopyWith<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  factory _$$AppVersionModelImplCopyWith(_$AppVersionModelImpl value,
          $Res Function(_$AppVersionModelImpl) then) =
      __$$AppVersionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min_ios_ver') String? minIosVer,
      @JsonKey(name: 'current_ios_ver') String? currentIosVer,
      @JsonKey(name: 'min_android_ver') String? minAndroidVer,
      @JsonKey(name: 'current_android_ver') String? currentAndroidVer,
      @JsonKey(name: 'update_message') String? updateMessage});
}

/// @nodoc
class __$$AppVersionModelImplCopyWithImpl<$Res>
    extends _$AppVersionModelCopyWithImpl<$Res, _$AppVersionModelImpl>
    implements _$$AppVersionModelImplCopyWith<$Res> {
  __$$AppVersionModelImplCopyWithImpl(
      _$AppVersionModelImpl _value, $Res Function(_$AppVersionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minIosVer = freezed,
    Object? currentIosVer = freezed,
    Object? minAndroidVer = freezed,
    Object? currentAndroidVer = freezed,
    Object? updateMessage = freezed,
  }) {
    return _then(_$AppVersionModelImpl(
      minIosVer: freezed == minIosVer
          ? _value.minIosVer
          : minIosVer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentIosVer: freezed == currentIosVer
          ? _value.currentIosVer
          : currentIosVer // ignore: cast_nullable_to_non_nullable
              as String?,
      minAndroidVer: freezed == minAndroidVer
          ? _value.minAndroidVer
          : minAndroidVer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAndroidVer: freezed == currentAndroidVer
          ? _value.currentAndroidVer
          : currentAndroidVer // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMessage: freezed == updateMessage
          ? _value.updateMessage
          : updateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppVersionModelImpl extends _AppVersionModel {
  _$AppVersionModelImpl(
      {@JsonKey(name: 'min_ios_ver') this.minIosVer,
      @JsonKey(name: 'current_ios_ver') this.currentIosVer,
      @JsonKey(name: 'min_android_ver') this.minAndroidVer,
      @JsonKey(name: 'current_android_ver') this.currentAndroidVer,
      @JsonKey(name: 'update_message') this.updateMessage})
      : super._();

  factory _$AppVersionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppVersionModelImplFromJson(json);

  @override
  @JsonKey(name: 'min_ios_ver')
  final String? minIosVer;
  @override
  @JsonKey(name: 'current_ios_ver')
  final String? currentIosVer;
  @override
  @JsonKey(name: 'min_android_ver')
  final String? minAndroidVer;
  @override
  @JsonKey(name: 'current_android_ver')
  final String? currentAndroidVer;
  @override
  @JsonKey(name: 'update_message')
  final String? updateMessage;

  @override
  String toString() {
    return 'AppVersionModel(minIosVer: $minIosVer, currentIosVer: $currentIosVer, minAndroidVer: $minAndroidVer, currentAndroidVer: $currentAndroidVer, updateMessage: $updateMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionModelImpl &&
            (identical(other.minIosVer, minIosVer) ||
                other.minIosVer == minIosVer) &&
            (identical(other.currentIosVer, currentIosVer) ||
                other.currentIosVer == currentIosVer) &&
            (identical(other.minAndroidVer, minAndroidVer) ||
                other.minAndroidVer == minAndroidVer) &&
            (identical(other.currentAndroidVer, currentAndroidVer) ||
                other.currentAndroidVer == currentAndroidVer) &&
            (identical(other.updateMessage, updateMessage) ||
                other.updateMessage == updateMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minIosVer, currentIosVer,
      minAndroidVer, currentAndroidVer, updateMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionModelImplCopyWith<_$AppVersionModelImpl> get copyWith =>
      __$$AppVersionModelImplCopyWithImpl<_$AppVersionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppVersionModelImplToJson(
      this,
    );
  }
}

abstract class _AppVersionModel extends AppVersionModel {
  factory _AppVersionModel(
          {@JsonKey(name: 'min_ios_ver') final String? minIosVer,
          @JsonKey(name: 'current_ios_ver') final String? currentIosVer,
          @JsonKey(name: 'min_android_ver') final String? minAndroidVer,
          @JsonKey(name: 'current_android_ver') final String? currentAndroidVer,
          @JsonKey(name: 'update_message') final String? updateMessage}) =
      _$AppVersionModelImpl;
  _AppVersionModel._() : super._();

  factory _AppVersionModel.fromJson(Map<String, dynamic> json) =
      _$AppVersionModelImpl.fromJson;

  @override
  @JsonKey(name: 'min_ios_ver')
  String? get minIosVer;
  @override
  @JsonKey(name: 'current_ios_ver')
  String? get currentIosVer;
  @override
  @JsonKey(name: 'min_android_ver')
  String? get minAndroidVer;
  @override
  @JsonKey(name: 'current_android_ver')
  String? get currentAndroidVer;
  @override
  @JsonKey(name: 'update_message')
  String? get updateMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppVersionModelImplCopyWith<_$AppVersionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
