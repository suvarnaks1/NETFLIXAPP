import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/constans.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 25,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_up))),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg"),
                      ),
                    ),
                    Space.sizedBoxHeight20,
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    Space.sizedBoxHeight20,
                    VideoActionWidget(icon: Icons.add, title: 'My List'),
                    Space.sizedBoxHeight20,
                    VideoActionWidget(icon: Icons.share, title: 'Share'),
                    Space.sizedBoxHeight20,
                    VideoActionWidget(icon: Icons.play_arrow, title: 'Play')
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;

  final String title;

  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        //Space.sizedBoxHeight,
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        )
      ],
    );
  }
}
