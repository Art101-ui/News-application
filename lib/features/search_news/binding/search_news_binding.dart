import 'package:get/get.dart';
import 'package:news_application/features/search_news/controller/search_news_controller.dart';

class SearchNewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SearchNewsController());
  }
}
