// import 'package:flutter/material.dart';

// import '../../../core/colors/colors.dart';
// import '../../../core/constants.dart';

// class SearchIdleWidget extends StatelessWidget {
//   const SearchIdleWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         kHeight,
//         const Text(
//           "Top Searches",
//           style: TextStyle(
//             color: qWhite,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         kHeight,
//         ListView.separated(
//           shrinkWrap: true,
//           itemBuilder: (context, index) => const TopSearches(),
//           separatorBuilder: (context, index) => kHeight,
//           itemCount: 10,
//         )
//       ],
//     );
//   }
// }

// class TopSearches extends StatelessWidget {
//   const TopSearches({super.key});

//   final imageUrl =
//       "https://adherents.com/wp-content/uploads/2021/06/sex-education-feature-1024x576.jpg";

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Row(
//       children: [
//         Container(
//           width: screenWidth * 0.3,
//           height: 80,
//           decoration: BoxDecoration(
//               image: DecorationImage(image: NetworkImage(imageUrl))),
//         )
//       ],
//     );
//   }
// }
