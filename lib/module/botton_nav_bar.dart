import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: ksecondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/home.svg",
              color: kPrimaryColor,
              height: 28,
              width: 28,
            ),
            tooltip: 'Home',
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/placeholder.svg",
              color: kPrimaryColor,
            ),
            onPressed: () {},
            tooltip: 'Discover',
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/search.svg",
              height: 28,
              width: 28,
              color: kPrimaryColor,
            ),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/star.svg",
              color: kPrimaryColor,
            ),
            tooltip: 'Favourite',
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/user.svg",
              color: kPrimaryColor,
            ),
            tooltip: 'Profile',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
