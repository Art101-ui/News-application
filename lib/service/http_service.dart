import 'package:dio/dio.dart';

// used abstract to attain loose coupling so that the other class won't be able to change any piece of code in it. and they can only implement it's generalization
abstract class HttpService {
  void init();

  Future<Response> getRequest(String url);
}
