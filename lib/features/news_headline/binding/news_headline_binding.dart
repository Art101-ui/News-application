import 'package:get/get.dart';
import 'package:news_application/core/news_repo_impl.dart';
import 'package:news_application/features/news_headline/controller/news_headline_controller.dart';

class NewsHeadlineBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NewsRepIml());
    Get.put(NewsHeadlineController());
  }
}
