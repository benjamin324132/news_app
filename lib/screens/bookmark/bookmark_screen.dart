import 'package:flutter/material.dart';
import 'package:news_app/components/coustom_bottom_nav_bar.dart';
import 'package:news_app/enums.dart';
import 'package:news_app/screens/bookmark/components/body.dart';
import 'package:news_app/screens/search/search_screen.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("Bookmark"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          )
        ],
      ),*/
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
