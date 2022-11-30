import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widgets/tittle.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const SearchTittleWidget(
          tittle: 'Top Search',
        ),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearches(),
            separatorBuilder: (context, index) => kHeight20,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearches extends StatelessWidget {
  const TopSearches({super.key});

  final imageUrl =
      "https://adherents.com/wp-content/uploads/2021/06/sex-education-feature-1024x576.jpg";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            "Sex Education",
            style: TextStyle(
              color: qWhite,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Icon(
          Icons.play_circle_outline,
          color: qWhite,
          size: 40,
        )
      ],
    );
  }
}
