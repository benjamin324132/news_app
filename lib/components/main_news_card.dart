import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class MainNewsCard extends StatelessWidget {
  const MainNewsCard(
      {Key? key,
      this.title = "On politics with Lisa Loureniani: Warren’s growing crowds",
      this.channel = "Euronews",
      this.category = "Politics",
      required this.image,
      this.showImg = true,
      this.showName = true})
      : super(key: key);

  final String title, channel, category;
  final String image;
  final bool showName, showImg;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        if (showImg)
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              image,
              height: size.height * .4,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
        const SizedBox(height: defaultPadding),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showName)
              Text(
                channel,
                style: Theme.of(context).textTheme.caption,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Row(
              children: [
                Text(
                  category,
                  maxLines: 2,
                  style: TextStyle(color: kPrimaryColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: kSecondaryColor,
                  ),
                ),
                Text(
                  "3m ago",
                  style: TextStyle(color: kSecondaryColor),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            )
          ],
        )
      ],
    );
  }
}
