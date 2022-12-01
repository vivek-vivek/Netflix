import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/custom_home_screen_btn.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyone_watching.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_screen_widget.dart';

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
            _buildEveryOnesWatching(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildComingSoon(BuildContext context) {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return const ComingSoon(imageUrl: duneMovie);
    },
  );
}

Widget _buildEveryOnesWatching(BuildContext context) {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => const EveryOnesWatching(),
  );
}
