import 'package:flutter/material.dart';
import 'package:news_app/screens/search/components/body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: const Body(),
    );
  }
}
