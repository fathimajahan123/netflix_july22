// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_july22/utils/color_constants.dart';

class Newarrivalcard extends StatelessWidget {
  const Newarrivalcard({
    super.key,
    required this.image,
    required this.filmname,
    required this.date,
    required this.text1,
  });
  final String image;
  final String filmname;
  final String date;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      color: ColorConstants.darkgrey,
      child: Row(
        children: [
          Image.asset(
            fit: BoxFit.cover,
            image,
            height: 55,
            width: 113,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                    color: ColorConstants.mainwhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                filmname,
                style: TextStyle(
                    color: ColorConstants.mainwhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                date,
                style: TextStyle(
                    color: ColorConstants.mainwhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}
