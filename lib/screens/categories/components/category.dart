import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.text, required this.checked})
      : super(key: key);
  final String text;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: checked ? Colors.transparent : grayColor),
                color: checked ? kPrimaryColor : Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Icon(
                Icons.check,
                size: 20.0,
                color: checked ? Colors.white : grayColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
