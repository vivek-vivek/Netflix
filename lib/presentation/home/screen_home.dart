import 'package:flutter/material.dart';
import '../widgets/main_tittle_card.dart';
import 'widgets/number_tittle_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final imageUrl = "https://wallpaperaccess.com/full/5849980.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainTittleCard(imageUrl: imageUrl, tittle: 'Released in past year'),
            MainTittleCard(imageUrl: imageUrl, tittle: 'Trending Now'),
            NumberTittleCard(imageUrl: imageUrl),
            MainTittleCard(imageUrl: imageUrl, tittle: 'Tense Dram'),
            MainTittleCard(imageUrl: imageUrl, tittle: 'South Indian Cinema'),
          ],
        ),
      ),
    );
  }
}
