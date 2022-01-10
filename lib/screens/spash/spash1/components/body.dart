import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/spash/splash2/splash_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 25, vertical: defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          const Text(
            "Features",
            style: TextStyle(
                color: kTextColor, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          const Text(
            "The best news channels all in one place. \n Trusted sources and personalized news for \n you",
            style: TextStyle(color: grayColor),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      "https://cdn.dribbble.com/users/56251/screenshots/17194334/media/c0283b68946accb2d697e13dd691dcd7.png?compress=1&resize=900x900&vertical=top",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Sector news never shares \n personal data with advertisers \n or publishers",
                    style: TextStyle(color: grayColor),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      "https://cdn.dribbble.com/users/46089/screenshots/17201548/media/f9a4885dc8770c00b4bbbf980c30e87e.jpg?compress=1&resize=900x900&vertical=top",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Compelling photography \n  and typhography provide a  \n beautiful reading",
                    style: TextStyle(color: grayColor),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      "https://cdn.dribbble.com/users/59947/screenshots/17199913/media/543d59af1aefc5a9c2094a2e666a3bb2.jpg?compress=1&resize=900x900&vertical=top",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Compelling photography and \n typhography provide a \n beautiful reading",
                    style: TextStyle(color: grayColor),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          DefaultButton(
            text: "Get started",
            press: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SplashScreen2()));
            },
            big: true,
          ),
        ],
      ),
    );
  }
}
