// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_july22/utils/color_constants.dart';

class ComingSoonCard extends StatelessWidget {
  const ComingSoonCard({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  final String image;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.mainBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 195,
              width: double.infinity,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 24,
                    color: ColorConstants.mainwhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Remins Me",
                    style: TextStyle(
                        fontSize: 11, color: ColorConstants.mainwhite),
                  )
                ],
              ),
              SizedBox(
                width: 45,
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size: 24,
                    color: ColorConstants.mainwhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Share",
                      style: TextStyle(
                          fontSize: 11, color: ColorConstants.mainwhite))
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,
                    style: TextStyle(
                        fontSize: 11.4,
                        color: ColorConstants.mainwhite.withOpacity(.83))),
                SizedBox(
                  height: 12,
                ),
                Text(text2,
                    style: TextStyle(
                        fontSize: 18,
                        color: ColorConstants.mainwhite,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 12,
                ),
                Text(text3,
                    style: TextStyle(
                        fontSize: 11.4,
                        color: ColorConstants.mainwhite.withOpacity(.83))),
                SizedBox(
                  height: 12,
                ),
                Text(
                    "Steamy . Soapy . Slow Burn . Suspenseful . Teen . Mystery",
                    style: TextStyle(
                        fontSize: 11.4,
                        color: ColorConstants.mainwhite,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
