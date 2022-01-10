import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/note/components/comment.dart';

class Comments extends StatelessWidget {
  const Comments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Comments",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text("To Write",
                  style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Comment(
          name: "Sophie French",
          date: "03 Feb at 12:38",
          comment:
              "Mi travesía en la indigencia fue traumática, pero también resultó increíblemente costosa, y en eso quiero centrarme en este texto.",
        ),
        Comment(
          name: "Lyon Bryson",
          date: "31 Jul at 9:38",
          comment:
              "Me convertí en un elefante, un pulpo y un globo. Me crecieron manos gigantes, pero no pude deshacerme de la tristeza.",
        ),
        Comment(
          name: "Sophie French",
          date: "28 May at 9:38",
          comment:
              "Un solo día, el 6 de enero de 2021, bastó para que las naciones del planeta dejaran de ver a Estados Unidos como un ejemplo democrático a seguir.",
        ),
      ],
    );
  }
}
