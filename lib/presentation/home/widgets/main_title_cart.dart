import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/home/widgets/main_card.dart';

import '../../../core/constans.dart';
import '../../widgets/maintitle_text.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: MaintitleText(
          title: title,
        ),
      ),
      Space.sizedBoxHeight,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const MainCrad())),
      )
    ]);
  }
}
