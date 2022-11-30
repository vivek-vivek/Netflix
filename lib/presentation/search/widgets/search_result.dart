import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/tittle.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTittleWidget(tittle: "Movies & All"),
        kHeight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1/1.4,
            children: List.generate(
              20,
              (index) {
                return const MainCardMovieTileWidget();
              },
            ),
          ),
        )
      ],
    );
  }
}

class MainCardMovieTileWidget extends StatelessWidget {
  const MainCardMovieTileWidget({super.key});
  final String imageUrl =
      "https://www.themoviedb.org/t/p/original/quLtM0IhUdKSxs748MQUpQW2zia.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
