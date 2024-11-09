import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/constans.dart';
import 'package:netflixapp/presentation/search/widgets/search_idle.dart';
import 'package:netflixapp/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: TextStyle(color: Colors.white),
            backgroundColor: Colors.grey.withOpacity(0.4),
          ),
          Space.sizedBoxHeight,
          // Expanded(child: SearchIdleWidget()),

          Expanded(child: SearchResult())
        ],
      ),
    ));
  }
}
