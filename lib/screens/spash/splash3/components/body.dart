import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 60),
        const Text(
          "News channels",
          style: TextStyle(
              color: kTextColor, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 15),
        const Text(
          "The sector apps brings you \n each weeks issue along \n with bonus content",
          style: TextStyle(color: grayColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 45),
        DefaultButton(
          text: "Next",
          press: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SignInScreen()));
          },
          big: false,
        ),
        Spacer(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://cdn.dribbble.com/users/372/screenshots/17193580/media/aec4c547457bc063cb744cd956bdce01.png?compress=1&resize=1600x1600",
                    height: size.height * .50,
                    width: size.width * .92,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://cdn.dribbble.com/users/372/screenshots/17193580/media/aec4c547457bc063cb744cd956bdce01.png?compress=1&resize=1600x1600",
                    height: size.height * .50,
                    width: size.width * .92,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://cdn.dribbble.com/users/372/screenshots/17193580/media/aec4c547457bc063cb744cd956bdce01.png?compress=1&resize=1600x1600",
                    height: size.height * .50,
                    width: size.width * .92,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
