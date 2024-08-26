// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_july22/dummy_db.dart';
import 'package:netflix_july22/utils/color_constants.dart';
import 'package:netflix_july22/view/coming_soon_screen/widgets/coming_soon_card.dart';
import 'package:netflix_july22/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        appBar: AppBar(
          leadingWidth: 60,
          titleSpacing: 0,
          backgroundColor: ColorConstants.mainBlack,
          leading: Padding(
            padding: const EdgeInsets.all(12),
            child: CircleAvatar(
                backgroundColor: ColorConstants.red,
                child: Icon(
                  Icons.notifications,
                  color: ColorConstants.mainwhite,
                )),
          ),
          title: Text(
            "Notifications",
            style: TextStyle(
                color: ColorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: List.generate(
                DummyDb.comingsoonlist.length,
                (index) => Newarrivalcard(
                  image: DummyDb.comingsoonlist[index]["image"],
                  filmname: DummyDb.comingsoonlist[index]["filmname"],
                  date: DummyDb.comingsoonlist[index]["date"],
                  text1: DummyDb.comingsoonlist[index]["text1"],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
                children: List.generate(
              DummyDb.comingSoonCardlist.length,
              (index) => ComingSoonCard(
                image: DummyDb.comingSoonCardlist[index]["image"],
                text1: DummyDb.comingSoonCardlist[index]["text1"],
                text2: DummyDb.comingSoonCardlist[index]["text2"],
                text3: DummyDb.comingSoonCardlist[index]["text3"],
              ),
            ))
          ]),
        ));
  }
}
