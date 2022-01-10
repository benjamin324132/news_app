import 'package:flutter/material.dart';
import 'package:news_app/screens/spash/spash1/components/body.dart';
import 'package:news_app/size_config.dart';

class SplashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
