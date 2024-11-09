import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:netflixapp/presentation/new_and_hot/Widgets/Vedio_widget.dart';

import '../../../core/constans.dart';
import '../../home/screen_home.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Space.sizedBoxHeight,
        Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Space.sizedBoxHeight,
        Text(
          "Landing the lead in thye school musical is a dream come true for Jodi, until the pressure sends her confidence- and her relationship-- into a tailspin",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        Space.sizedBoxHeight50,
        VedioWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.share,
              title: 'Share',
              Size: 25,
              textSize: 16,
            ),
            CustomButtonWidget(
              icon: Icons.add,
              title: 'My List',
              Size: 25,
              textSize: 16,
            ),
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              Size: 25,
              textSize: 16,
            ),
            Space.sizedBoxHeight20
          ],
        )
      ],
    );
  }
}
