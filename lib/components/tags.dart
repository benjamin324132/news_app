import 'package:flutter/material.dart';
import 'package:news_app/components/tag_button.dart';

class Tags extends StatelessWidget {
  const Tags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: [
        TagButton(
          text: "#trending",
        ),
        TagButton(
          text: "#today",
        ),
        TagButton(
          text: "#sports",
        ),
        TagButton(
          text: "#mbi",
        ),
        TagButton(
          text: "#marketing",
        ),
        TagButton(
          text: "#bussines",
        ),
        TagButton(
          text: "#bloomberg",
        ),
        TagButton(
          text: "#markets",
        ),
      ],
    );
  }
}
