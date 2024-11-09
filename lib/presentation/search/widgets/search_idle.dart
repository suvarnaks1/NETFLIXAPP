import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constans.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w250_and_h141_face/1wo90L3F7hA9h6cG5xfz3dB1IE6.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Searches",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
       Space.sizedBoxHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemsTile(),
              separatorBuilder: (context, index) => Space.sizedBoxHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemsTile extends StatelessWidget {
  const TopSearchItemsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        const Expanded(
            child: Text(
          "Movie Name",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          radius: 23,
          child: CircleAvatar(
              backgroundColor: AppColors.backgroundColor,
              radius: 21,
              child: Icon(
                Icons.play_arrow,
                color: AppColors.whiteColor,
              )),
        ),
      ],
    );
  }
}
