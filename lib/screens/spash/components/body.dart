import 'package:flutter/material.dart';
import 'package:news_app/components/default_button.dart';
import 'package:news_app/constants.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  get defaultPaddin => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: ClipRRect(
               borderRadius: BorderRadius.circular(8.0),
               child: Image.network(
               "https://cdn.dribbble.com/users/6228692/screenshots/17173318/media/d8e1785908635c66bd8b8041f0528fb3.png?compress=1&resize=1600x1600",
               height: 400,
               width: double.infinity,
               fit: BoxFit.cover,
              ),
           ),
        ),
        const Spacer(),
        const Text("Automatic renewal" ,style: TextStyle(color: kTextColor, fontSize: 22, fontWeight: FontWeight.w600),),
        const SizedBox(height: 15),
        const Text("The sector apps brings you \n each weeks issue along \n with bonus content" ,style: TextStyle(color: grayColor), textAlign: TextAlign.center,),
        const Spacer(),
        DefaultButton(
          text: "skip",
          press: (){},
          big: false,
        ),
        const Spacer()
      ],
    );
  }
}