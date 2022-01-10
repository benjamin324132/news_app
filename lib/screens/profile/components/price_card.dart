import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/size_config.dart';

class PriceCard extends StatelessWidget {
  const PriceCard(
      {Key? key,
      this.cheked = false,
      required this.title,
      required this.price,
      required this.desc})
      : super(key: key);
  final bool cheked;
  final String title, price, desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * .44,
      height: SizeConfig.screenWidth * .44,
      decoration: BoxDecoration(
          border: Border.all(color: grayColor),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding / 2),
        child: Column(
          children: [
            SizedBox(
              height: defaultPadding / 2,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: cheked ? Colors.transparent : grayColor),
                  color: cheked ? kPrimaryColor : Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Icon(
                  Icons.check,
                  size: 35.0,
                  color: cheked ? Colors.white : grayColor,
                ),
              ),
            ),
            Text(title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            Text("\$${price}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              desc,
              style: TextStyle(color: kSecondaryColor, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
