import 'package:flutter/material.dart';
import '../../widgets/main_tittle.dart';
import 'number_card.dart';

class NumberTittleCard extends StatelessWidget {
  const NumberTittleCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: MainTittle(tittle: 'Top 10 Tv Shows In India Today'),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCardWidget(
                imageUrl: imageUrl,
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}
