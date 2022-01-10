import 'package:flutter/material.dart';
import 'package:news_app/components/avatar.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/constants.dart';

class Follow extends StatelessWidget {
  const Follow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Avatar(),
              SizedBox(
                width: defaultPadding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fox News",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Broadcast Media",
                    style: TextStyle(fontSize: 10, color: grayColor),
                  ),
                ],
              )
            ],
          ),
          DefaultButton(
            press: () {},
            text: "+ Follow",
            big: false,
          ),
        ],
      ),
    );
  }
}
