import 'package:flutter/material.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_screen_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_home_screen_btn.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.02),
      child: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: [
          kHeight,
          Row(
            children: [
              Text(
                "Dune",
                style: TextStyle(
                    fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          kHeight5,
          const Text(
            """Villeneuve chose British rock band Pink Floyd's "Eclipse", from their 1973 album The Dark Side of the Moon, as the "key musical element" in the first theatrical trailer released on September 9, 2020.""",
            style: TextStyle(color: qGrey),
          ),
          xHeight(height: 50),
          VideoPlyingScreenWidget(size: size, imageUrl: newImageUrl),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const CustomsHomeScreenButton(
                data: Icons.share_rounded,
                tittle: "Share",
                iconSize: 20,
                textSize: 11,
              ),
              xWidth(width: 10),
              //
              const CustomsHomeScreenButton(
                data: Icons.add,
                tittle: "My List",
                iconSize: 20,
                textSize: 11,
              ),
              xWidth(width: 10),
              //
              const CustomsHomeScreenButton(
                data: Icons.play_arrow_rounded,
                tittle: "Play",
                iconSize: 20,
                textSize: 11,
              ),
              xWidth(width: 10),
              //
            ],
          )
        ],
      ),
    );
  }
}
