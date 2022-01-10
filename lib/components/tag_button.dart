import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class TagButton extends StatelessWidget {
  const TagButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(grayColor.withOpacity(0.2)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: grayColor),
        ));
  }
}
