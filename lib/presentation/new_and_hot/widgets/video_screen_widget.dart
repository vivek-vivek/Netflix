import 'package:flutter/material.dart';

class VideoPlyingScreenWidget extends StatelessWidget {
  const VideoPlyingScreenWidget({
    Key? key,
    required this.size,
    required this.imageUrl,
  }) : super(key: key);

  final Size size;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.width * 0.4,
          child: Image(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 0,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
