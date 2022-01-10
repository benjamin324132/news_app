import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/components/get_premium_button.dart';
import 'package:news_app/components/main_news_card.dart';
import 'package:news_app/components/news_avatar.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/components/news_card_vertical.dart';
import 'package:news_app/components/newsletter.dart';
import 'package:news_app/components/search_textfield.dart';
import 'package:news_app/components/tags.dart';
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
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: SearchTextField(),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Channels",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("Show All",
                    style: TextStyle(
                        fontSize: 15,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold))
              ],
            ),
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
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Tags",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("Show All",
                    style: TextStyle(
                        fontSize: 15,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Tags(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hot News",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("Show All",
                    style: TextStyle(
                        fontSize: 15,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: defaultPadding,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 0.60,
              ),
              children: [
                NewsCardVertical(
                  showName: false,
                  title: "El auge y la caída de Elizabeth Holmes",
                  image:
                      "https://static01.nyt.com/images/2021/12/28/business/00holmes-siliconvalley1-esp-1/00holmes-siliconvalley1-videoLarge.jpg",
                ),
                NewsCardVertical(
                  title: "El auge y la caída de Elizabeth Holmes",
                  showName: false,
                  image:
                      "https://static01.nyt.com/images/2022/01/03/opinion/31hayes1/31hayes1-mediumThreeByTwo210.jpg?quality=100&auto=webp",
                ),
                NewsCardVertical(
                  title:
                      "‘Matrix’ representa el optimismo por un internet libre. Silicon Valley tiene otros planes",
                  showName: false,
                  image:
                      "https://static01.nyt.com/images/2021/12/17/us/politics/28dc-harris-ESP-00/merlin_199273359_ee841ad9-28c5-44c4-9407-0e5510b904de-superJumbo.jpg?quality=75&auto=webp",
                ),
                NewsCardVertical(
                  title: "El auge y la caída de Elizabeth Holmes",
                  showName: false,
                  image:
                      "https://static01.nyt.com/images/2021/12/27/world/29afghanistan-reunion-ESP-00/00afghanistan-reunion-dispatch-mediumThreeByTwo210.jpg?quality=100&auto=webp",
                ),
                NewsCardVertical(
                  title: "¿Qué pasa en Kazajistán?",
                  showName: false,
                  image:
                      "https://static01.nyt.com/images/2022/01/05/world/05kazakhstanexplainer/05kazakhstanexplainer-videoLarge.jpg",
                ),
                NewsCardVertical(
                  showName: false,
                  image:
                      "https://static01.nyt.com/images/2021/12/27/opinion/30Kang-ES/27kang-image2-mediumThreeByTwo210.jpg?quality=100&auto=webp",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
