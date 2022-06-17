import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:news_application/constants.dart';

import 'http_service.dart';

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  @override
  Future<Response> getRequest(String url) {
    // TODO: implement getRequest
    throw UnimplementedError();
  }

  @override
  void init() {
    _dio = Dio(
        BaseOptions(baseUrl: BASE_URL, headers: {"Authorization": API_KEY}));
  }
}
