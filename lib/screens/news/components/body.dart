import 'package:flutter/material.dart';
import 'package:news_app/components/main_news_card.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/components/news_header.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/components/categories_list.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          NewsHeader(),
          Divider(
            color: grayColor,
            thickness: 0.2,
          ),
          CategoriesList(),
          Divider(
            color: grayColor,
            thickness: 0.2,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: MainNewsCard(
              image:
                  "https://static01.nyt.com/images/2021/12/17/us/politics/28dc-harris-ESP-00/merlin_199273359_ee841ad9-28c5-44c4-9407-0e5510b904de-superJumbo.jpg?quality=75&auto=webp",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ListView.separated(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => const NewsCard(
                showName: false,
                image:
                    "https://static01.nyt.com/images/2021/12/17/us/politics/28dc-harris-ESP-00/merlin_199273359_ee841ad9-28c5-44c4-9407-0e5510b904de-superJumbo.jpg?quality=75&auto=webp",
              ),
              separatorBuilder: (context, index) =>
                  const SizedBox(height: defaultPadding),
            ),
          ),
        ],
      ),
    );
  }
}
