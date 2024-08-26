// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_july22/utils/color_constants.dart';
import 'package:netflix_july22/utils/image_constants.dart';
import 'package:netflix_july22/view/home_screen/home_screen.dart';
import 'package:netflix_july22/view/username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then(
      (Value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => UsernameScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Image.asset(ImageConstants.Logo),
      ),
    );
  }
}
