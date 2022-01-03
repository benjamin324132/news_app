import 'package:flutter/material.dart';
import 'package:news_app/screens/spash/components/body.dart';
import 'package:news_app/size_config.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}