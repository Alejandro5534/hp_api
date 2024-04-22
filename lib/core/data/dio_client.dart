import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dioClient(Ref ref) {
  BaseOptions options = BaseOptions(
    baseUrl: "https://hp-api.onrender.com/api",
  );

  Dio dio = Dio(options);
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      final uri = Uri.parse('${options.baseUrl}${options.path}')
          .replace(queryParameters: options.queryParameters);
      // print("URL: $uri");
      handler.next(options);
    },
  ));
  return dio;
}
