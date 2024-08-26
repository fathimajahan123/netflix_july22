// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_july22/utils/color_constants.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({
    super.key,
    required this.url,
    required this.title,
  });
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.darkgrey,
      child: Row(
        children: [
          Image.asset(
            url,
            height: 76,
            width: 146,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: TextStyle(color: ColorConstants.mainwhite),
            ),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outline,
            color: ColorConstants.mainwhite,
          )
        ],
      ),
    );
  }
}
