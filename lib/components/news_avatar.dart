import 'package:flutter/material.dart';
import 'package:news_app/components/avatar.dart';
import 'package:news_app/screens/news/news_screen.dart';

class NewsAvatar extends StatelessWidget {
  const NewsAvatar({
    Key? key,
    this.showName = true,
  }) : super(key: key);

  final bool showName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewsScreen()));
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500.withOpacity(0.6),
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 35.0,
                    spreadRadius: 1.0),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Avatar(),
            ),
          ),
          if (showName) SizedBox(height: 20),
          if (showName)
            Text(
              "Fox News",
              style: Theme.of(context).textTheme.caption,
            ),
        ],
      ),
    );
  }
}
