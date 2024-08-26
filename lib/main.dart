// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_july22/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_july22/view/coming_soon_screen/widgets/coming_soon_card.dart';
import 'package:netflix_july22/view/downloads_screen/downloads_screen.dart';
import 'package:netflix_july22/view/more_screen/more_screen.dart';
import 'package:netflix_july22/view/search_screen/search_screen.dart';
import 'package:netflix_july22/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
