import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/components/get_premium_button.dart';
import 'package:news_app/components/main_news_card.dart';
import 'package:news_app/components/news_avatar.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/components/newsletter.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/components/categories_list.dart';
import 'package:news_app/screens/note/note_screen.dart';
import 'package:news_app/size_config.dart';

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
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NoteScreen()));
              },
              child: MainNewsCard(
                image:
                    "https://static01.nyt.com/images/2021/12/17/us/politics/28dc-harris-ESP-00/merlin_199273359_ee841ad9-28c5-44c4-9407-0e5510b904de-superJumbo.jpg?quality=75&auto=webp",
              ),
            ),
          ),
          Divider(
            color: grayColor,
            thickness: 0.2,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: NewsAvatar(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: NewsAvatar(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: NewsAvatar(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: NewsAvatar(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: NewsAvatar(),
                ),
              ],
            ),
          ),
          Divider(
            color: grayColor,
            thickness: 0.2,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ListView.separated(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => const NewsCard(
                image:
                    "https://static01.nyt.com/images/2021/12/17/us/politics/28dc-harris-ESP-00/merlin_199273359_ee841ad9-28c5-44c4-9407-0e5510b904de-superJumbo.jpg?quality=75&auto=webp",
              ),
              separatorBuilder: (context, index) =>
                  const SizedBox(height: defaultPadding),
            ),
          ),
          GetPremiumButton(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ListView.separated(
              itemCount: 2,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => const NewsCard(
                image:
                    "https://static01.nyt.com/images/2021/12/17/us/politics/28dc-harris-ESP-00/merlin_199273359_ee841ad9-28c5-44c4-9407-0e5510b904de-superJumbo.jpg?quality=75&auto=webp",
              ),
              separatorBuilder: (context, index) =>
                  const SizedBox(height: defaultPadding),
            ),
          ),
          Newsletter()
        ],
      ),
    );
  }
}
