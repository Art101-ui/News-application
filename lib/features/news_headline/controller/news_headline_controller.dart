import 'package:get/get.dart';
import 'package:news_application/core/model/article.dart';
import 'package:news_application/core/news_repo_impl.dart';

class NewsHeadlineController extends GetxController {
  final NewsRepIml _newsRepIml = Get.find<NewsRepIml>();
  late RxList<Article> articles;
  RxBool isLoading = false.obs;
  NewsHeadlineController() {
    loadNewsHeadline();
  }

  loadNewsHeadline() async {
    showLoading();
    final result = await _newsRepIml.getNewsHeadline();

    if (result != null) {
      articles = result.obs;
    } else {
      print('No data received');
    }

    hideLoading();
  }

  showLoading() {
    isLoading.toggle();
  }

  hideLoading() {
    isLoading.toggle();
  }
}
