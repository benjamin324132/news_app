import 'package:flutter/material.dart';
import 'package:news_app/components/avatar.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/components/news_avatar.dart';
import 'package:news_app/components/news_card_vertical.dart';
import 'package:news_app/components/search_textfield.dart';
import 'package:news_app/components/tags.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/profile/components/price_card.dart';
import 'package:news_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Premium - 12 Days",
                        style: TextStyle(color: grayColor),
                      ),
                    ],
                  ),
                  Avatar()
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Choose your plan",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.info_outline,
                      size: 30,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  PriceCard(
                      cheked: true,
                      title: "Month",
                      price: "9.99",
                      desc: "Billed every month"),
                  SizedBox(
                    width: 8,
                  ),
                  PriceCard(
                      cheked: false,
                      title: "Year",
                      price: "4.9/mon",
                      desc: "Billed every 12 months"),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              DefaultButton(
                text: "Get Premium \$9.99",
                press: () {},
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Divider(
                thickness: 5,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Full Name",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("Benjamin",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("landavazobenjamin@gmail.com",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Country",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("Mexico",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("City",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("Santa Ana",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 5,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Favourite Channels",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("17",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bookmarks",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("386",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 5,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Newsletter",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("23",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Settings",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("0",
                            style: TextStyle(
                                fontSize: 15,
                                color: grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
