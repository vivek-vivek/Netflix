import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_home_screen_btn.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.15,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "FEB",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: qGrey,
                ),
              ),
              Text("11", style: kDateStyle30),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          width: size.width - (size.width * 0.17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
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
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.width * 0.1),
                    child: Text(
                      "Dune",
                      style: TextStyle(
                          fontSize: size.width * 0.1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomsHomeScreenButton(
                        data: Icons.notifications_none_outlined,
                        tittle: "Remind Me",
                        textSize: 12,
                        iconSize: 24,
                      ),
                      kHeight,
                      CustomsHomeScreenButton(
                        data: Icons.info_outline,
                        tittle: "Info",
                        textSize: 12,
                        iconSize: 24,
                      ),
                    ],
                  )
                ],
              ),
              // coming soon
              Row(
                children: const [
                  Text(
                    "Coming on Friday",
                    style: TextStyle(color: qGrey),
                  ),
                ],
              ),
              kHeight,
              Row(
                children: [
                  Text(
                    "Dune",
                    style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              kHeight5,
              const Text(
                """Villeneuve chose British rock band Pink Floyd's "Eclipse", from their 1973 album The Dark Side of the Moon, as the "key musical element" in the first theatrical trailer released on September 9, 2020.""",
                style: TextStyle(color: qGrey),
              ),
              kHeight,
            ],
          ),
        )
      ],
    );
  }
}