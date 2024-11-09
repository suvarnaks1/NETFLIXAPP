import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg"))),
            ),
          ],
        ),
        Positioned(
            left: 13,
            bottom: -40,
            child: BorderedText(
                strokeWidth: 10.0,
                strokeColor: Colors.white,
                child: Text(
                  "${index +1} ",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black,
                    color: Colors.black,
                    fontSize: 140,
                    fontWeight: FontWeight.bold
                  ),
                )))
      ],
    );
  }
}
