import 'package:flutter/material.dart';
import 'package:netflixapp/core/constans.dart';

const imageUrl =
    'https://media.themoviedb.org/t/p/w220_and_h330_face/jyw8VKYEiM1UDzPB7NsisUgBeJ8.jpg';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Movies & Tv",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Space.sizedBoxHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1/1.4,
            children: List.generate(20, (index) {
              return MainCard();
            }),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: NetworkImage(imageUrl)),
              borderRadius: BorderRadius.circular(8)
              ),
    );
  }
}
