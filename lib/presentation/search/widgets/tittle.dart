import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class SearchTittleWidget extends StatelessWidget {
  final String tittle;
  const SearchTittleWidget({
    Key? key,
    required this.tittle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: const TextStyle(
        color: qWhite,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
