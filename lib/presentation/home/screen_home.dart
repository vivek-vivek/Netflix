import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import '../widgets/main_tittle_card.dart';
import 'widgets/number_tittle_card.dart';

ValueNotifier<bool> scrollDirectionNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final imageUrl = "https://wallpaperaccess.com/full/5849980.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollDirectionNotifier,
        builder: (BuildContext context, bool, Widget? _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              log(direction.toString());
              if (direction == ScrollDirection.reverse) {
                scrollDirectionNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollDirectionNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    const BackgroundCard(),
                    kHeight,
                    MainTittleCard(
                        imageUrl: imageUrl, tittle: 'Released in past year'),
                    kHeight,
                    MainTittleCard(imageUrl: imageUrl, tittle: 'Trending Now'),
                    kHeight,
                    NumberTittleCard(imageUrl: imageUrl),
                    kHeight,
                    MainTittleCard(imageUrl: imageUrl, tittle: 'Tense Dram'),
                    kHeight,
                    MainTittleCard(
                        imageUrl: imageUrl, tittle: 'South Indian Cinema'),
                  ],
                ),
                scrollDirectionNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          color: Colors.black.withOpacity(0.4),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  kWidth,
                                  SizedBox(
                                    width: 30,
                                    height: 40,
                                    child: Image.network(
                                      netflixLogoUrl,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.cast,
                                      size: 30, color: qWhite),
                                  kWidth,
                                  Container(
                                      width: 30, height: 30, color: qBlue),
                                  kWidth
                                ],
                              ),
                              kHeight5,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Tv Shows", style: kTittleStyle16),
                                  Text("Movies", style: kTittleStyle16),
                                  Text("Category", style: kTittleStyle16),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    : kHeight
              ],
            ),
          );
        },
      ),
    );
  }

// ^--------------------------------------------------------------

}
