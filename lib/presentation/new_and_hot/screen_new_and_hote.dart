import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              const Icon(Icons.cast, size: 30, color: qWhite),
              kWidth,
              Container(width: 30, height: 20, color: qBlue),
              kWidth
            ],
            bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: qWhite,
                labelColor: qBlack,
                labelStyle: kTittleStyle16,
                indicator:
                    BoxDecoration(color: qWhite, borderRadius: kBorderRadius30),
                tabs: const [
                  Tab(text: '🍿Coming Soon'),
                  Tab(text: '👀 EveryOne\'s Watching'),
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryOnesWatching(),
          ],
        ),
      ),
    );
  }
}

Widget _buildComingSoon(BuildContext context) {
  const String imageUrl =
      'https://wp.scoopwhoop.com/wp-content/uploads/2020/02/5e3d09e350758d4cadd50189_646d0874-4f7f-4030-8e35-df3d5a69e836.jpg';
  Size size = MediaQuery.of(context).size;
  return ListView(
    children: [
      kHeight,
      Row(
        children: [
          SizedBox(
            width: size.width * 0.15,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "FEB",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: qGrey,
                  ),
                ),
                Text("11", style: kDateStyle30),
              ],
            ),
          ),
          SizedBox(
            height: 400,
            width: size.width - (size.width * 0.17),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: size.width * 0.4,
                      child: const Image(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children:  [
                    Text("Tall Girl 2",style: kTittle35,),
                  ],
                )
              ],
            ),
          )
        ],
      )
    ],
  );
}

Widget _buildEveryOnesWatching() {
  return const Text("ev");
}
