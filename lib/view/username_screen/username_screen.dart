// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_july22/dummy_db.dart';
import 'package:netflix_july22/utils/color_constants.dart';
import 'package:netflix_july22/utils/image_constants.dart';
import 'package:netflix_july22/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:netflix_july22/view/global_widgets/user_name_card.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorConstants.mainBlack,
          title: Image.asset(
            ImageConstants.Logo,
            height: 40,
          ),
          actions: [
            Icon(
              Icons.edit,
              color: ColorConstants.mainwhite,
            )
          ],
        ),
        body: Center(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: DummyDb.data.length + 1,
            padding: EdgeInsets.symmetric(horizontal: 75),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 22,
                crossAxisSpacing: 25,
                mainAxisExtent: 121),
            itemBuilder: (context, index) => index < DummyDb.data.length
                ? UserNameCard(
                    name: DummyDb.data[index]["name"],
                    image: DummyDb.data[index]["imagepath"],
                    onCardTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavbarScreen()));
                    },
                  )
                : UserNameCard(
                    name: "Add",
                    image: ImageConstants.add,
                    onCardTapped: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: ColorConstants.red,
                          content: Text("feature not available")));
                    },
                  ),
          ),
        ));
  }
}
