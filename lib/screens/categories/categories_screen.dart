import 'package:flutter/material.dart';
import 'package:news_app/components/coustom_bottom_nav_bar.dart';
import 'package:news_app/enums.dart';
import 'package:news_app/screens/categories/components/body.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Categories"),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.menu),
    );
  }
}
