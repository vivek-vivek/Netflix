import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import '../../../core/constants.dart';

class NumberCardWidget extends StatelessWidget {
  final String imageUrl;
  final int index;
  const NumberCardWidget(
      {super.key, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(height: 150, width: 40),
            Container(
              width: 130,
              decoration: BoxDecoration(
                borderRadius: kBorderRadius10,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 1.5,
            strokeColor: qWhite,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                color: qBlack,
                fontSize: 120,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        )
      ],
    );
  }
}
