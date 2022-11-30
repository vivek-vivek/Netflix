import 'package:flutter/material.dart';
import 'main_card.dart';
import 'main_tittle.dart';

class MainTittleCard extends StatelessWidget {
  final String tittle;
  const MainTittleCard({
    Key? key,
    required this.imageUrl,
    required this.tittle,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: MainTittle(tittle: tittle),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => MainCard(imageUrl: imageUrl),
            ),
          ),
        )
      ],
    );
  }
}
