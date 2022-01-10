import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/constants.dart';

class Newsletter extends StatelessWidget {
  const Newsletter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      width: double.infinity,
      height: 270,
      color: grayColor.withOpacity(0.2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Newsletter",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "x",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          DefaultButton(
            text: "Subscribe",
            press: () {},
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'By clicking on Subscribe button \n you agree to accept ',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: grayColor),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: kPrimaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
