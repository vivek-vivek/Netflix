import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class VideoListItems extends StatelessWidget {
  final int index;
  const VideoListItems({super.key, required this.index});
  final imageUrl =
      "https://adherents.com/wp-content/uploads/2021/06/sex-education-feature-1024x576.jpg";

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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ~left
                CircleAvatar(
                  radius: 25,
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
                // ~ right
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                        radius: 25,
                      ),
                    ),
                    kHeight,
                    const VideoActionsWidget(
                        onIconData: Icons.emoji_emotions_outlined,
                        tittle: 'LOL'),
                    kHeight,
                    const VideoActionsWidget(
                        onIconData: Icons.add, tittle: 'My List'),
                    kHeight,
                    const VideoActionsWidget(
                        onIconData: Icons.share_outlined, tittle: 'Share'),
                    kHeight,
                    const VideoActionsWidget(
                        onIconData: Icons.play_arrow, tittle: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData onIconData;
  final String tittle;
  const VideoActionsWidget({
    super.key,
    required this.onIconData,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          onIconData,
          color: qWhite,
        ),
        Text(
          tittle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
