import 'package:flutter/material.dart';
import 'package:news_app/components/avatar.dart';
import 'package:news_app/constants.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fox News",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                "Broadcast Media",
                style: TextStyle(color: grayColor),
              ),
            ],
          ),
          Avatar()
        ],
      ),
    );
  }
}
