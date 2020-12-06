import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic/constants.dart';

AppBar detailAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 2,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/back.svg",
        color: Colors.grey,
        height: 20,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    title: Text(
      'Smooth Broccoli',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.grey, fontSize: 20),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/heart.svg",
          height: 25,
          width: 25,
          color: kPrimaryColor,
        ),
        onPressed: () {},
      ),
    ],
  );
}
