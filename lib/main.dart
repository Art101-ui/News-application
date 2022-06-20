import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application/features/news_headline/binding/news_headline_binding.dart';
import 'package:news_application/features/news_headline/view/news_headline.dart';
import 'package:news_application/features/search_news/binding/search_news_binding.dart';
import 'package:news_application/features/search_news/view/search_news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

   
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         

         
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: '/news_headline',
            page: () => NewsHealineView(),
            binding: NewsHeadlineBinding()),
        GetPage(
            name: '/search_news',
            page: () => SearchNewsiew(),
            binding: SearchNewsBinding())
      ],
      initialRoute: '/news_headline',

    );
  }
}

