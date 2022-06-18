import 'dart:html';

import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:news_application/constants.dart';

import 'http_service.dart';

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  @override
  Future<Response> getRequest(String url) async {
    Response response;
    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      throw Exception(e.message);
    }

    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onError: (error) {
      print(error.message);
    }, onRequest: (request) {
      print('${request.method} | ${request.path}');
    }, onResponse: (response) {
      print(
          '${response.statusCode} | ${response.statusMessage} | ${response.data}');
    }));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
        baseUrl: BASE_URL, headers: {"Authorization": 'Bearer $API_KEY'}));

    initializeInterceptors();
  }
}
