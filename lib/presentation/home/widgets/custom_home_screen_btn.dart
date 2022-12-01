import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class CustomsHomeScreenButton extends StatelessWidget {
  final IconData data;
  final String tittle;
  const CustomsHomeScreenButton({
    Key? key,
    required this.data,
    required this.tittle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            data,
            size: 30,
            color: qWhite,
          ),
        ),
        Text(
          tittle,
          style: const TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
