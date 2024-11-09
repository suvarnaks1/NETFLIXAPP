import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixapp/presentation/home/widgets/background_card.dart';
import 'package:netflixapp/presentation/home/widgets/main_card.dart';

import 'package:netflixapp/presentation/home/widgets/main_title_cart.dart';
import 'package:netflixapp/presentation/home/widgets/number_card.dart';

import '../../core/constans.dart';
import '../widgets/maintitle_text.dart';

ValueNotifier<bool> scrolNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrolNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (Notification) {
                  final ScrollDirection direction = Notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrolNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrolNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackgroundCard(),
                        MainTitleCard(
                          title: "Released in the Past year",
                        ),
                        Space.sizedBoxHeight,
                        MainTitleCard(
                          title: "Trending Now",
                        ),
                        Space.sizedBoxHeight,
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: MaintitleText(
                                  title: "Top 10 Tv Shows In India Today",
                                ),
                              ),
                              Space.sizedBoxHeight,
                              LimitedBox(
                                maxHeight: 200,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: List.generate(
                                        10,
                                        (index) => NumberCard(
                                              index: index,
                                            ))),
                              )
                            ]),
                        Space.sizedBoxHeight,
                        MainTitleCard(
                          title: "Tense Dramas",
                        ),
                        Space.sizedBoxHeight,
                        MainTitleCard(
                          title: "South Indian Cinema",
                        ),
                      ],
                    ),
                    scrolNotifier.value == true
                        ? AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            child: Container(
                                width: double.infinity,
                                height: 80,
                                color: Colors.black.withOpacity(0.3),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.network(
                                          "https://w7.pngwing.com/pngs/393/55/png-transparent-netflix-logo-thumbnail.png",
                                          width: 40,
                                          height: 40,
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.cast,
                                          color: Colors.white,
                                        ),
                                        Icon(Icons.set_meal,
                                            color: Colors.white)
                                      ],
                                    ),
                                    Space.sizedBoxHeight,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Tv show",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Movies",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Categories",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          )
                        : Space.sizedBoxHeight
                  ],
                ),
              );
            }));
  }
}

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.Size, required this.textSize,
  });
  final IconData icon;
  final String title;
  final double Size;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: Size,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize
          ),
        )
      ],
    );
  }
}
