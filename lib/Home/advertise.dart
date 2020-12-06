import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class Advertise extends StatelessWidget {
  const Advertise({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(15),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '50%',
                style: TextStyle(
                  fontSize: 50,
                  color: ksecondaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'CASHBACK',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: kTextColor),
              ),
              Text(
                'ON ORGANICS',
                style: TextStyle(fontSize: 20, color: kTextColor),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
              child: SvgPicture.asset(
            "assets/special.svg",
            color: ksecondaryColor,
            height: 130,
            width: 150,
            fit: BoxFit.contain,
          ))
        ],
      ),
    );
  }
}
