import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_failure.freezed.dart';

@freezed
abstract class MealsFailure with _$MealsFailure {
  const factory MealsFailure.cacheUserDataError() = CacheUserDataError;
  const factory MealsFailure.serverError() = ServerError;
}
