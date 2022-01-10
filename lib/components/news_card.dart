import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required this.image, this.showName = true})
      : super(key: key);

  final String image;
  final bool showName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                image,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: defaultPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (showName)
                    Text(
                      "Euronews",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding / 2),
                    child: Text(
                      "On politics with Lisa Loureniani: Warren’s growing crowds",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Politics",
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2),
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
              ),
            )
          ],
        ),
      ],
    );
  }
}
