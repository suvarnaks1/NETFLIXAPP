import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/Every_one_widget.dart';
import 'Widgets/coming_soon_widget.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Text(
                  "New & Hot",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: Colors.white,
                ),
                const Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
            bottom: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ]),
          ),
          body: TabBarView(
            children: [_buildComingSoon(), _buildEveryOneWatching()],
          )),
    );
  }

  _buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const ComingsoonWidget());
  }

  _buildEveryOneWatching() {
    return ListView.builder(
        itemBuilder: (BuildContext context, index) =>
            const EveryonesWatchingWidget());
  }
}
