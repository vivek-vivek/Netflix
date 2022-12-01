import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: qBlack,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: qBlack),
        ),
      ),
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(qWhite),
      ),
    );
  }
}