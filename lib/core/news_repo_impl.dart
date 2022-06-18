import 'package:get/get.dart';
import 'package:news_application/core/model/article.dart';
import 'package:news_application/core/model/news_response_model.dart';
import 'package:news_application/core/news_repo.dart';
import 'package:news_application/service/http_service.dart';

import '../service/http_service_impl.dart';

class NewsRepIml implements NewsRepo {
  late HttpService _httpService;

  NewsRepo() {
    _httpService = Get.put(HttpServiceImpl());

    _httpService.init();
  }

  @override
  Future<List<Article>?> getNewsHeadline() async {
    try {
      final response = await _httpService.getRequest('v2/top-headlines?country=us');

      final parsedResponse =  NewsResponse.fromJson(response.data);

      return parsedResponse.articles!;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Future<List<Article>?> getSearchNews(String query) async{
   try {
      final response = await _httpService.getRequest('v2/everything?q=$query');

      final parsedResponse =  NewsResponse.fromJson(response.data);

      return parsedResponse.articles!;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}
