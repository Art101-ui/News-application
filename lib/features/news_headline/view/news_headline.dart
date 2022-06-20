import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application/core/widgets/drawer.dart';
import 'package:news_application/features/news_headline/controller/news_headline_controller.dart';

class NewsHealineView extends StatelessWidget {
   NewsHealineView({Key? key}) : super(key: key);

  final controller = Get.find<NewsHeadlineController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News Headline'),
        ),
        drawer: getAppDrawer(),
        body: Obx(() {
          return  controller.isLoading.isTrue ? const CircularProgressIndicator() : 
          Container(
            margin: const EdgeInsets.all(10),
            child: ListView.separated(itemBuilder: (context,index)=> Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(controller.articles[index].urlToImage!),
      
                const SizedBox(height: 8),
                Text(controller.articles[index].title!  , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                const SizedBox(height: 4,),
                Text(
                                controller.articles[index].description!,
                                ),
                              
                

              ],
            )
                 
           , separatorBuilder: (context,index)=>Divider(), itemCount: controller.articles.length),
          );
        }));
  }
}
