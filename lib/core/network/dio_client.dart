import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'end_points.dart';
import 'interceptors/logging_interceptor.dart';

@module
abstract class DioClient {
  @lazySingleton
  Dio get dio => _getDio();

  Dio _getDio() {
    final options = BaseOptions(
      baseUrl: baseUrl,
    );
    final dio = Dio(options);

    if (kDebugMode) {
      dio.interceptors.add(LoggingInterceptor());
    }

    return dio;
  }
}
