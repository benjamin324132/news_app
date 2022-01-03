import 'package:flutter/material.dart';
import 'package:news_app/screens/home/home_screen.dart';
import 'package:news_app/screens/spash/splash_screen.dart';
import 'package:news_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: theme(),
      home:  SplashScreen(),
    );
  }
}

