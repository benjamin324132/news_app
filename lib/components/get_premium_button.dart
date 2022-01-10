import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/size_config.dart';

class GetPremiumButton extends StatelessWidget {
  const GetPremiumButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(53),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: grayColor, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(8)),
            primary: Colors.white,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () {},
          child: Text(
            "Tired of Ads? Get Premium - \$9.99",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              color: grayColor,
            ),
          ),
        ),
      ),
    );
  }
}
