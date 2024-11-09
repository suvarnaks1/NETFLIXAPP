import 'package:flutter/material.dart';

import '../screen_home.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  // fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://media.themoviedb.org/t/p/w220_and_h330_face/2exOHePjOTquUsbThPGhuEjYTyA.jpg"))),
          width: double.infinity,
          height: 600,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(
                  icon: Icons.add,
                  title: 'My LIst', 
                  Size: 20,
                  textSize: 12,
                ),
                _PlayButton(),
                CustomButtonWidget(
                  icon: Icons.info,
                  title: 'Info',
                   Size: 20,
                  textSize: 12,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

   TextButton _PlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
      label: Text(
        "Play",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      icon: Icon(
        Icons.play_arrow,
        size: 25,
        color: Colors.black,
      ),
    );
  }
}
