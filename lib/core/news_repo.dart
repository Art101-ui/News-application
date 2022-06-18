import 'package:news_application/core/model/article.dart';

abstract class NewsRepo {
  Future<List<Article>?> getNewsHeadline();
  Future<List<Article>?> getSearchNews(String query);
}
