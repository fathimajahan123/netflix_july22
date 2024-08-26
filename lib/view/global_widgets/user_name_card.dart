import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard(
      {super.key,
      required this.name,
      required this.image,
      this.onCardTapped,
      this.height,
      this.width});
  final String image;
  final String name;
  final double? height;
  final double? width;

  final void Function()? onCardTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(
        children: [
          Image.asset(
            image,
            height: height,
            width: width,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, height: 2),
          )
        ],
      ),
    );
  }
}
