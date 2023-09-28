// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealsModel _$MealsModelFromJson(Map<String, dynamic> json) {
  return _MealsModel.fromJson(json);
}

/// @nodoc
mixin _$MealsModel {
  List<MealModel>? get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealsModelCopyWith<MealsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsModelCopyWith<$Res> {
  factory $MealsModelCopyWith(
          MealsModel value, $Res Function(MealsModel) then) =
      _$MealsModelCopyWithImpl<$Res, MealsModel>;
  @useResult
  $Res call({List<MealModel>? meals});
}

/// @nodoc
class _$MealsModelCopyWithImpl<$Res, $Val extends MealsModel>
    implements $MealsModelCopyWith<$Res> {
  _$MealsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      meals: freezed == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealsModelImplCopyWith<$Res>
    implements $MealsModelCopyWith<$Res> {
  factory _$$MealsModelImplCopyWith(
          _$MealsModelImpl value, $Res Function(_$MealsModelImpl) then) =
      __$$MealsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MealModel>? meals});
}

/// @nodoc
class __$$MealsModelImplCopyWithImpl<$Res>
    extends _$MealsModelCopyWithImpl<$Res, _$MealsModelImpl>
    implements _$$MealsModelImplCopyWith<$Res> {
  __$$MealsModelImplCopyWithImpl(
      _$MealsModelImpl _value, $Res Function(_$MealsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_$MealsModelImpl(
      meals: freezed == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealsModelImpl implements _MealsModel {
  _$MealsModelImpl({final List<MealModel>? meals}) : _meals = meals;

  factory _$MealsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealsModelImplFromJson(json);

  final List<MealModel>? _meals;
  @override
  List<MealModel>? get meals {
    final value = _meals;
    if (value == null) return null;
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MealsModel(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsModelImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsModelImplCopyWith<_$MealsModelImpl> get copyWith =>
      __$$MealsModelImplCopyWithImpl<_$MealsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealsModelImplToJson(
      this,
    );
  }
}

abstract class _MealsModel implements MealsModel {
  factory _MealsModel({final List<MealModel>? meals}) = _$MealsModelImpl;

  factory _MealsModel.fromJson(Map<String, dynamic> json) =
      _$MealsModelImpl.fromJson;

  @override
  List<MealModel>? get meals;
  @override
  @JsonKey(ignore: true)
  _$$MealsModelImplCopyWith<_$MealsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
