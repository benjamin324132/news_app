import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Trending",
                style: TextStyle(color: grayColor),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "World",
                style: TextStyle(color: grayColor),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Bussines",
                style: TextStyle(color: grayColor),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Sports",
                style: TextStyle(color: grayColor),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Tech",
                style: TextStyle(color: grayColor),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Culture",
                style: TextStyle(color: grayColor),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Music",
                style: TextStyle(color: grayColor),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Movies",
                style: TextStyle(color: grayColor),
              )),
        ],
      ),
    );
  }
}
