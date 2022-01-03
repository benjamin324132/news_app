import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/constants.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DefaultButton(
              text: "Get Started",
              big: false,
              press: () {},
            ),
           /* Expanded(
              child: ListView.separated(
                        itemCount: 6,
                        itemBuilder: (context, index) => const NewsCard(
                          image: "https://cdn.dribbble.com/users/729829/screenshots/17176100/media/e6015db89b88c8b83e9390ffb179fec7.png?compress=1&resize=1200x1200",
                        ),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: defaultPadding),
                      ),
            ),*/
            
          ],
        ),
      ),
    );
  }
}