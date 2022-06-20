import 'package:flutter/material.dart';
import 'package:news_application/core/widgets/drawer.dart';

class SearchNewsiew extends StatelessWidget {
  const SearchNewsiew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search News'),
        ),
        drawer: getAppDrawer(),
        body: Container());
  }
}
