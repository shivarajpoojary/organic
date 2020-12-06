import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 2,
    leading: IconButton(
      icon: SvgPicture.asset("assets/menu.svg"),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/filter.svg",
          height: 25,
          width: 25,
          color: Colors.grey,
        ),
        onPressed: () {},
      ),
    ],
  );
}
