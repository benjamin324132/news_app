import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/size_config.dart';

class NewsCardVertical extends StatelessWidget {
  const NewsCardVertical(
      {Key? key,
      this.title = "On politics with Lisa Loureniani: Warren’s growing crowds",
      this.channel = "Euronews",
      this.category = "Politics",
      required this.image,
      this.showName = true})
      : super(key: key);

  final String title, channel, image, category;
  final bool showName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                image,
                height: SizeConfig.screenWidth * .45,
                width: SizeConfig.screenWidth * .45,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: defaultPadding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showName)
                  Text(
                    channel,
                    style: Theme.of(context).textTheme.caption,
                  ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                  child: Text(
                    title,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      category,
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: kSecondaryColor,
                      ),
                    ),
                    Text(
                      "3m ago",
                      style: TextStyle(color: kSecondaryColor),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
