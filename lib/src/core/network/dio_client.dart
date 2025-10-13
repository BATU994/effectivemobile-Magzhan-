import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;
  DioClient(this._dio) {
    _dio.options
      ..baseUrl = 'https://rickandmortyapi.com/api/'
      ..connectTimeout = const Duration(seconds: 5)
      ..receiveTimeout = const Duration(seconds: 5);
    _dio.interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true),
    );
  }

  // Метод GET
  Future<Response<T>> get<T>(
    String path,
    Map<String, dynamic>? queryParameters,
  ) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } on DioException catch (error) {
      throw Exception(error.toString());
    }
  }

  //Другие методы могут быть написаны тут POST,DELETE,PATCH
}
