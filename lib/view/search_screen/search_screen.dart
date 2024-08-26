// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_july22/dummy_db.dart';
import 'package:netflix_july22/utils/color_constants.dart';
import 'package:netflix_july22/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                fillColor: ColorConstants.darkgrey,
                filled: true,
                hintText: "Search for a show, movie, genre, e.t.c.",
                hintStyle: TextStyle(fontSize: 15, color: ColorConstants.grey),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants.grey,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: ColorConstants.grey,
                )),
          ),
          SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Top Searches",
              style: TextStyle(
                  fontSize: 27,
                  color: ColorConstants.mainwhite,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 21,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => SearchScreenCard(
                      url: DummyDb.searchcsreendata[index]["url"],
                      title: DummyDb.searchcsreendata[index]["title"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 3,
                    ),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
