import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors.dart';
import 'package:netflixapp/presentation/widgets/app_bar_widget.dart';

import '../../core/constans.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _WiggetList = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) => _WiggetList[index],
            separatorBuilder: (context, index) => SizedBox(
                  height: 25,
                ),
            itemCount: _WiggetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imageList = [
    "https://media.themoviedb.org/t/p/w220_and_h330_face/jyw8VKYEiM1UDzPB7NsisUgBeJ8.jpg",
    "https://media.themoviedb.org/t/p/w220_and_h330_face/t9XkeE7HzOsdQcDDDapDYh8Rrmt.jpg",
    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Indroducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Space.sizedBoxHeight,
        const Text(
          "We Will Downloads a Personalised selection of movies and Shows For You \n So There is Always Something to your Device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                radius: size.width * 0.4,
              ),
              DownloadsImageWidgets(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 130, bottom: 50),
                angle: 20,
                size: Size(size.width * 0.4, size.width * 0.58),
              ),
              DownloadsImageWidgets(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 130, bottom: 50),
                angle: -20,
                size: Size(size.width * 0.4, size.width * 0.58),
              ),
              DownloadsImageWidgets(
                imageList: imageList[2],
                radius: 10,
                margin: const EdgeInsets.only(bottom: 10),
                size: Size(size.width * 0.45, size.width * 0.65),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: AppColors.buttonColor,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Setup",
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          // width: double.infinity,
          child: MaterialButton(
            color: AppColors.whiteColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See What You Can Download",
                style: TextStyle(
                    color: AppColors.backgroundColor,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Space.sizedBoxWidth,
        Icon(
          Icons.settings,
          color: AppColors.whiteColor,
        ),
        Space.sizedBoxWidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageList)),
        ),
      ),
    );
  }
}
