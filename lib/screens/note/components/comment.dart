import 'package:flutter/material.dart';
import 'package:news_app/components/avatar.dart';
import 'package:news_app/constants.dart';

class Comment extends StatelessWidget {
  const Comment(
      {Key? key, required this.name, required this.date, required this.comment})
      : super(key: key);

  final String name, date, comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Avatar(),
          SizedBox(
            width: defaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(name),
                        Text(date),
                      ],
                    ),
                    Container(child: Icon(Icons.more_horiz))
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Text(comment),
              ],
            ),
          )
        ],
      ),
    );
  }
}
