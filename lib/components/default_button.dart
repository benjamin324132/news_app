import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key, this.text, this.press, this.big = true, this.primary = true})
      : super(key: key);
  final String? text;
  final Function? press;
  final bool big, primary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: big ? double.infinity : 130,
      height: getProportionateScreenHeight(53),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          primary: Colors.white,
          backgroundColor: primary ? kPrimaryColor : grayColor.withOpacity(0.2),
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
            color: primary ? Colors.white : grayColor,
          ),
        ),
      ),
    );
  }
}
