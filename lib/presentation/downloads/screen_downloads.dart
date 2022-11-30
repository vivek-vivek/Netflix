import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widgets.dart';
import '../../core/colors/colors.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    const _SmartDownloads(),
    const Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: (context, index) => const SizedBox(height: 25),
          itemCount: _widgetList.length,
        ));
  }
}

// ^-----------------------------WIDGETS--------------------------

// ^ smart download widget- section 1
class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(Icons.settings, color: qWhite),
        kWidth,
        Text('Smart Download'),
      ],
    );
  }
}

// ^section -2 widget
class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final List imageList = [
      "https://www.themoviedb.org/t/p/original/quLtM0IhUdKSxs748MQUpQW2zia.jpg",
      "https://www.themoviedb.org/t/p/original/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
      "https://www.themoviedb.org/t/p/original/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg",
    ];
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          "Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: qWhite,
            fontSize: 23,
            fontWeight: FontWeight.w900,
          ),
        ),
        kHeight,
        const Text(
          'We\'ll  download a personalized selection of\nmovies  and show for you , so there\'s\nalways something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: qGrey, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Container(
          color: qBlack,
          width: size.width,
          height: size.width * 0.7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding:const  EdgeInsets.only(bottom: 40),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width * 0.60,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 130, bottom: 50),
                angel: 15,
                size: Size(size.width * 0.45, size.width * 0.58),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 130, bottom: 50),
                angel: -15,
                size: Size(size.width * 0.45, size.width * 0.58),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(top: 0.0, bottom: 25.00),
                size: Size(size.width * 0.5, size.width * 0.68),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ^ section 3 widget
class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: size.width*0.06),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              disabledColor: qBtnColor,
              onPressed: () {},
              color: qBtnColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Setup",
                  style: TextStyle(
                    color: qWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        kHeight,
        SizedBox(
          width: size.width * 0.8,
          child: MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: qWhite,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See What do you can download",
                style: TextStyle(
                  color: qBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        kHeight,
      ],
    );
  }
}

// ^ DownloadsImageWidget widget
class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angel = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angel;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angel * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.7,
        height: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: qBlack,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageList),
          ),
        ),
      ),
    );
  }
}
