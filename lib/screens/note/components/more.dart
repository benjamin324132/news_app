import 'package:flutter/material.dart';
import 'package:news_app/components/simple_card.dart';
import 'package:news_app/constants.dart';

class More extends StatelessWidget {
  const More({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("More in Lifestyle",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text("Show all",
                  style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SimpleCard(
                img:
                    "https://static01.nyt.com/images/2022/01/06/science/07virus-menstruation-ESP-1/06virus-menstruation-videoLarge.jpg",
                title:
                    "Los ciclos menstruales pueden haber cambiado tras la vacunación, según un estudio",
              ),
              SimpleCard(
                img:
                    "https://static01.nyt.com/images/2022/01/05/us/politics/05trump-1-esp-1/merlin_182049705_b7c15186-9167-4b6e-931d-2f98e7ba04ef-videoLarge.jpg",
                title:
                    "Donald Trump sigue dominando al Partido Republicano a un año del asalto al Capitolio",
              ),
              SimpleCard(
                img:
                    "https://static01.nyt.com/images/2022/01/05/opinion/05fukuyama1/05fukuyama1-videoLarge.jpg",
                title:
                    "Un solo día bastó para que el mundo apartara la mirada de nosotros",
              ),
              SimpleCard(
                img:
                    "https://static01.nyt.com/images/2022/01/06/science/07virus-menstruation-ESP-1/06virus-menstruation-videoLarge.jpg",
                title:
                    "Los ciclos menstruales pueden haber cambiado tras la vacunación, según un estudio",
              ),
            ],
          ),
        )
      ],
    );
  }
}
