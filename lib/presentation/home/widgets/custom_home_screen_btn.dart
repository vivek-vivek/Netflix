import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class CustomsHomeScreenButton extends StatelessWidget {
  final IconData data;
  final String tittle;
  final double textSize;
  final double iconSize;
  const CustomsHomeScreenButton({
    Key? key,
    required this.data,
    required this.tittle,
    this.textSize = 18,
    this.iconSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            data,
            size: iconSize,
            color: qWhite,
          ),
        ),
        Text(
          tittle,
          style: TextStyle(
            letterSpacing: 1,
            fontSize: textSize,
          ),
        )
      ],
    );
  }
}
