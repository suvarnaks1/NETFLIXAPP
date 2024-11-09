import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/bottomnavigationbar.dart';
import 'package:netflixapp/presentation/downloads/Screen_downloads.dart';
import 'package:netflixapp/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflixapp/presentation/home/screen_home.dart';
import 'package:netflixapp/presentation/new_and_hot/screen_new_hot.dart';
import 'package:netflixapp/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  List Pages = [
    ScreenHome(),
    ScreenNewHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context,int  index, _) {
              return Pages[index];
            },
          ),
        ),
        bottomNavigationBar: BottomnavigationbarWidget());
  }
}
