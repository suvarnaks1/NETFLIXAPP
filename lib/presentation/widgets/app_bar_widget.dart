import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/core/constans.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;
     

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Space.sizedBoxWidth,
        Text(
          title,
          style:
              GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.blue,
          size: 30,
        ),
        Space.sizedBoxWidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.amber,
        ),
        Space.sizedBoxWidth,
      ],
    );
  }
}
