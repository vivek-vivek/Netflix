import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/play_button.dart';

import '../../../core/constants.dart';
import 'custom_home_screen_btn.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(newImageUrl),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomsHomeScreenButton(data: Icons.add, tittle: 'My List'),
              PlayButtonWidget(),
              CustomsHomeScreenButton(data: Icons.info_outline, tittle: 'Info')
            ],
          ),
        )
      ],
    );
  }
}
