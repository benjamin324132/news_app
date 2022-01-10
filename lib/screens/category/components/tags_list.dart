import 'package:flutter/material.dart';
import 'package:news_app/components/tag_button.dart';
import 'package:news_app/constants.dart';

class TagsList extends StatelessWidget {
  const TagsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#putin",
          ),
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#today",
          ),
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#trump",
          ),
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#mbi",
          ),
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#marketing",
          ),
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#bussines",
          ),
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#bloomberg",
          ),
          SizedBox(
            width: defaultPadding,
          ),
          TagButton(
            text: "#markets",
          ),
        ],
      ),
    );
  }
}
