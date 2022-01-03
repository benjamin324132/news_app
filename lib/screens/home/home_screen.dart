import 'package:flutter/material.dart';
import 'package:news_app/components/coustom_bottom_nav_bar.dart';
import 'package:news_app/enums.dart';
import 'package:news_app/screens/home/components/body.dart';
import 'package:news_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, size: 30,),
          )
          ],
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}