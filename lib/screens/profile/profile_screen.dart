import 'package:flutter/material.dart';
import 'package:news_app/components/coustom_bottom_nav_bar.dart';
import 'package:news_app/enums.dart';
import 'package:news_app/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
