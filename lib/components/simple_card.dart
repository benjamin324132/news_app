import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/size_config.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({Key? key, required this.title, required this.img})
      : super(key: key);
  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * .3,
      margin: EdgeInsets.only(left: defaultPadding),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              img,
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text(
              title,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
