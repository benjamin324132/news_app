import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/spash/splash3/splash_screen.dart';

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
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://cdn.dribbble.com/users/6228692/screenshots/17173318/media/d8e1785908635c66bd8b8041f0528fb3.png?compress=1&resize=1600x1600",
                    height: size.height * .6,
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
                    "https://cdn.dribbble.com/users/6228692/screenshots/17173318/media/d8e1785908635c66bd8b8041f0528fb3.png?compress=1&resize=1600x1600",
                    height: size.height * .60,
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
                    "https://cdn.dribbble.com/users/6228692/screenshots/17173318/media/d8e1785908635c66bd8b8041f0528fb3.png?compress=1&resize=1600x1600",
                    height: size.height * .60,
                    width: size.width * .92,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          "Automatic renewal",
          style: TextStyle(
              color: kTextColor, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 15),
        const Text(
          "The sector apps brings you \n each weeks issue along \n with bonus content",
          style: TextStyle(color: grayColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 35),
        DefaultButton(
          text: "skip",
          press: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SplashScreen3()));
          },
          big: false,
        ),
      ],
    );
  }
}
