import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;
  DioClient(this._dio) {
    _dio.options
      ..baseUrl = 'https://rickandmortyapi.com/api/'
      ..connectTimeout = const Duration(seconds: 8)
      ..receiveTimeout = const Duration(seconds: 8);
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('Request: ${options.uri}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          print('Response: ${response.statusCode}');
          handler.next(response);
        },
        onError: (DioException e, handler) {
          print('Error: ${e.message}');
          handler.next(e);
        },
      ),
    );
  }

  // Метод GET
  Future<Response<T>> get<T>(
    String path,
    Map<String, dynamic>? queryParameters,
  ) async {
    return _dio.get(path, queryParameters: queryParameters);
  }

  //Другие методы могут быть написаны тут POST,DELETE,PATCH
}
