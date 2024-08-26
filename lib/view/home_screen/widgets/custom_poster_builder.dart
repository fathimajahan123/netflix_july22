// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_july22/utils/color_constants.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder(
      {this.isCircle = false,
      super.key,
      this.height = 177,
      this.width = 103,
      required this.title,
      this.imageList = const [],
      this.isinfoVisible = false});
  final bool isCircle;
  final double height;
  final double width;
  final String title;
  final List<String> imageList;
  final bool isinfoVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20.92,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.mainwhite),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            height: isCircle ? width : height,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemCount: imageList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imageList[index])),
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                  color: Colors.red,
                ),
                height: height,
                width: width,
                child: Visibility(
                  visible: isinfoVisible,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 3,
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        color: ColorConstants.darkgrey,
                        child: Container(
                          height: 3,
                          width: 35,
                          color: ColorConstants.red,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        color: ColorConstants.mainBlack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 24,
                              color: ColorConstants.mainwhite,
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 24,
                              color: ColorConstants.mainwhite,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 7,
              ),
            ),
          )
        ],
      ),
    );
  }
}
