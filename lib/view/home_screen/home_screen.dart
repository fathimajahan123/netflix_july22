// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_july22/dummy_db.dart';
import 'package:netflix_july22/utils/color_constants.dart';
import 'package:netflix_july22/utils/image_constants.dart';
import 'package:netflix_july22/view/home_screen/widgets/custom_poster_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#1 top 10 section
            _buildtop10section(),
            SizedBox(
              height: 11,
            ),
            //#2 playbutton section
            buildPlayButton(),
            SizedBox(
              height: 15,
            ),
            CustomPosterBuilder(
              imageList: DummyDb.imagelist1,
              title: "Previews",
              width: 102,
              isCircle: true,
            ),
            CustomPosterBuilder(
              isinfoVisible: true,
              imageList: DummyDb.imagelist2,
              title: "Continue Watching for Emenalo",
              height: 200,
            ),
            CustomPosterBuilder(
              imageList: DummyDb.imagelist3,
              height: 200,
              title: "Popular on Netflix",
            ),
            CustomPosterBuilder(
              imageList: DummyDb.imagelist1,
              title: "Trending Now",
            ),
            CustomPosterBuilder(
              imageList: DummyDb.imagelist1,
              title: "Top 10 in Nigeria Today",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlayButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColorConstants.mainwhite,
              size: 24,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
            )
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
              decoration: BoxDecoration(
                color: ColorConstants.grey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    size: 21,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Play",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: ColorConstants.mainwhite,
            ),
            Text(
              "info",
              style: TextStyle(color: ColorConstants.mainwhite),
            )
          ],
        )
      ],
    );
  }

  Widget _buildtop10section() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/home_1.jpg"))),
          height: 415,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 24, top: 45),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [ColorConstants.mainBlack, Colors.transparent])),
          height: 415,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImageConstants.logoN),
                  Text(
                    "TV Shows",
                    style: TextStyle(
                        color: ColorConstants.mainwhite, fontSize: 17.2),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(
                        color: ColorConstants.mainwhite, fontSize: 17.2),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                        color: ColorConstants.mainwhite, fontSize: 17.2),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstants.top10),
                  Text(
                    "#2 in Nigeria Today",
                    style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
