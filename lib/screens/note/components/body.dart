import 'package:flutter/material.dart';
import 'package:news_app/components/main_news_card.dart';
import 'package:news_app/components/news_header.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/screens/note/components/comment.dart';
import 'package:news_app/screens/note/components/comments.dart';
import 'package:news_app/screens/note/components/follow.dart';
import 'package:news_app/screens/note/components/more.dart';
import 'package:news_app/components/tags.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          NewsHeader(),
          Divider(
            color: grayColor,
            thickness: 0.2,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: MainNewsCard(
              showName: false,
              image:
                  "https://static01.nyt.com/images/2022/01/07/opinion/05carter1/merlin_182008593_da3fcf7c-f262-4155-8020-777eed9adaf1-superJumbo.jpg?quality=75&auto=webp",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Hace un año, una turba violenta guiada por políticos sin escrúpulos irrumpió en el Capitolio y casi logró evitar la transferencia democrática del poder. En aquel momento, los cuatro expresidentes condenamos sus acciones y afirmamos la legitimidad de las elecciones de 2020. Luego hubo una breve esperanza de que la insurrección conmocionaría al país a tal grado que eliminaría la polarización tóxica que amenaza nuestra democracia. Sin embargo, un año después, los promotores de la mentira de que las elecciones fueron robadas se han apoderado de un partido político y han avivado la desconfianza en nuestros sistemas electorales. Estas fuerzas ejercen poder e influencia a través de una desinformación implacable que sigue dividiendo a los estadounidenses. Según el Survey Center on American Life, el 36 por ciento de los estadounidenses —casi 100 millones de adultos de todo el espectro político— están de acuerdo en que “el estilo de vida tradicional estadounidense está desapareciendo tan rápido que quizá tengamos que usar la fuerza para salvarlo”. The Washington Post informó recientemente que cerca del 40 por ciento de los republicanos creen que la acción violenta contra el gobierno en ocasiones se justifica. Políticos en mi estado natal de Georgia, así como en otros, como Texas y Florida, se han aprovechado de la desconfianza que han creado para promulgar leyes que facultan a legislaturas partidistas para intervenir en los procesos electorales. Buscan ganar por cualquier medio, y se está persuadiendo a muchos estadounidenses a pensar y actuar de esa manera, lo que amenaza con derrumbar los cimientos de nuestra seguridad y democracia a una velocidad asombrosa. Ahora temo que aquello por lo que hemos luchado tan duro a nivel mundial —el derecho a elecciones libres y justas, sin la influencia de políticos autoritarios que lo único que buscan es incrementar su propio poder— se haya vuelto peligrosamente frágil en casa. Personalmente me enfrenté a esta amenaza en mi propia tierra en 1962, cuando un jefe de condado con votos amañados intentó robarme las elecciones que había ganado para el Senado del estado de Georgia. Esto fue en las primarias y denuncié el fraude en los tribunales. Al final, un juez anuló los resultados y terminé ganando las elecciones generales. A partir de allí, la protección y el avance de la democracia se convirtieron en una prioridad para mí. Como presidente, una de mis principales metas fue establecer gobiernos de mayorías en el sur de África y otros lugares.",
                style: TextStyle(color: grayColor, fontSize: 15, height: 1.4),
              ),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Tags(),
          SizedBox(
            height: defaultPadding,
          ),
          Follow(),
          SizedBox(
            height: defaultPadding,
          ),
          More(),
          SizedBox(
            height: defaultPadding,
          ),
          Comments(),
          TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(grayColor.withOpacity(0.2)),
              ),
              onPressed: () {},
              child: Text(
                "Load More",
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
