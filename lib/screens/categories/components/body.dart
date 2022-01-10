import 'package:flutter/material.dart';
import 'package:news_app/components/search_textfield.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/categories/components/category.dart';
import 'package:news_app/screens/category/category_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            SearchTextField(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CategoryScreen()));
              },
              child: Category(
                text: "For you",
                checked: true,
              ),
            ),
            Category(
              text: "Latest",
              checked: false,
            ),
            Category(
              text: "Popular",
              checked: false,
            ),
            Category(
              text: "World",
              checked: true,
            ),
            Category(
              text: "Bussines",
              checked: false,
            ),
            Category(
              text: "Tchenology",
              checked: true,
            ),
            Category(
              text: "Culture",
              checked: true,
            ),
            Category(
              text: "Music",
              checked: false,
            ),
            Category(
              text: "Movies",
              checked: true,
            ),
          ],
        ),
      ),
    );
  }
}
