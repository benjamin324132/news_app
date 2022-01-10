import 'package:flutter/material.dart';
import 'package:news_app/components/get_premium_button.dart';
import 'package:news_app/components/main_news_card.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/category/components/tags_list.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              "Politics",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            color: grayColor,
            thickness: 0.2,
          ),
          TagsList(),
          Divider(
            color: grayColor,
            thickness: 0.2,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LimitedBox(
                  maxWidth: SizeConfig.screenWidth * .95,
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NoteScreen()));
                      },
                      child: MainNewsCard(
                        title:
                            "6 de enero: un año después, persisten las falsedades sobre la invasión al Capitolio",
                        image:
                            "https://static01.nyt.com/images/2021/12/17/us/politics/28dc-harris-ESP-00/merlin_199273359_ee841ad9-28c5-44c4-9407-0e5510b904de-superJumbo.jpg?quality=75&auto=webp",
                      ),
                    ),
                  ),
                ),
                LimitedBox(
                  maxWidth: SizeConfig.screenWidth * .95,
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NoteScreen()));
                      },
                      child: MainNewsCard(
                        title: "El auge y la caída de Elizabeth Holmes",
                        image:
                            "https://static01.nyt.com/images/2022/01/03/us/politics/03dc-riot-explainer-esp-1/merlin_190720395_49af63b7-f075-41dc-a3d3-5ed460494d3c-videoLarge.jpg",
                      ),
                    ),
                  ),
                ),
                LimitedBox(
                  maxWidth: SizeConfig.screenWidth * .95,
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NoteScreen()));
                      },
                      child: MainNewsCard(
                        image:
                            "https://static01.nyt.com/images/2021/12/28/business/00holmes-siliconvalley1-esp-1/00holmes-siliconvalley1-videoLarge.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
        ],
      ),
    );
  }
}
