// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:netflix_july22/dummy_db.dart';
import 'package:netflix_july22/utils/color_constants.dart';
import 'package:netflix_july22/utils/image_constants.dart';
import 'package:netflix_july22/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 38,
            ),
            //#1 user selection section
            _builduserselectionsection(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstants.mainwhite,
                ),
                Text(
                  "Manage Profiles",
                  style: TextStyle(color: ColorConstants.mainwhite),
                )
              ],
            ),
            SizedBox(
              height: 9,
            ),
            //#2 refer section
            _buildrefersection(),
            Padding(
              padding: const EdgeInsets.only(left: 27, top: 3),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: ColorConstants.mainwhite,
                    size: 33,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.72),
                  )
                ],
              ),
            ),
            Divider(
              color: ColorConstants.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "App Settings ",
                    style: TextStyle(
                        color: ColorConstants.mainwhite, fontSize: 14.72),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        color: ColorConstants.mainwhite, fontSize: 14.72),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                        color: ColorConstants.mainwhite, fontSize: 14.72),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Sign Out",
                    style: TextStyle(
                        color: ColorConstants.mainwhite, fontSize: 14.72),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildrefersection() {
    return Container(
      color: ColorConstants.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.message_outlined,
                  color: ColorConstants.mainwhite,
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Tell friends about Netflix",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.mainwhite),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
              style: TextStyle(
                  height: 1.8,
                  letterSpacing: 1,
                  color: ColorConstants.mainwhite,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "Terms & Conditions",
              style: TextStyle(
                  shadows: [
                    Shadow(offset: Offset(0, -4), color: ColorConstants.grey)
                  ],
                  decoration: TextDecoration.underline,
                  decorationColor: ColorConstants.grey,
                  height: 1.8,
                  letterSpacing: 1,
                  color: Colors.transparent,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: ColorConstants.mainBlack,
                        filled: true),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 37,
                  width: 96,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorConstants.mainwhite,
                  ),
                  child: Text(
                    "Copy Link",
                    style: TextStyle(
                        fontSize: 17.65,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Brand(Brands.whatsapp),
                SizedBox(height: 41, child: VerticalDivider()),
                Brand(Brands.facebook),
                SizedBox(height: 41, child: VerticalDivider()),
                Brand(Brands.gmail),
                SizedBox(height: 41, child: VerticalDivider()),
                Column(
                  children: [
                    Icon(
                      Icons.more_horiz,
                      color: ColorConstants.mainwhite,
                    ),
                    Text(
                      "More",
                      style: TextStyle(color: ColorConstants.mainwhite),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _builduserselectionsection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Row(
        children: List.generate(
            DummyDb.data.length + 1,
            (index) => index < DummyDb.data.length
                ? Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: UserNameCard(
                        height: index == 0 ? 68 : 60,
                        width: index == 0 ? 73 : 65,
                        name: DummyDb.data[index]["name"],
                        image: DummyDb.data[index]["imagepath"]),
                  )
                : Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorConstants.mainwhite)),
                        height: 60,
                        width: 65,
                        child: Icon(
                          Icons.add,
                          color: ColorConstants.mainwhite,
                        ),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                            color: ColorConstants.mainBlack, height: 2),
                      )
                    ],
                  )),
      ),
    );
  }
}
