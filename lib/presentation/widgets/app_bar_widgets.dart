import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        const Text(
          "Downloads",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
          color: qWhite,
        ),
        kWidth,
        Container(
          width: 30,
          height: 30,
          color: qBlue,
        ),
        kWidth
      ],
    );
  }
}
