import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegList extends StatelessWidget {
  const VegList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 100,
            margin: EdgeInsets.only(right: 20, left: 20, top: 3),
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/onion.svg",
                    height: MediaQuery.of(context).size.width * 0.09,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Onions",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(right: 20, left: 20, top: 3),
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                color: Colors.greenAccent.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset("assets/broccoli.svg",
                      height: MediaQuery.of(context).size.width * 0.09),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Broccoli",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(right: 20, left: 20, top: 3),
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                color: Colors.amberAccent.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset("assets/carrot.svg",
                      height: MediaQuery.of(context).size.width * 0.09),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Carrot",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(right: 20, left: 20, top: 3),
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.4),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset("assets/fruits.svg",
                      height: MediaQuery.of(context).size.width * 0.09),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Apple",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(right: 20, left: 20, top: 3),
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset("assets/pineapple.svg",
                      height: MediaQuery.of(context).size.width * 0.09),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "pineapple",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
