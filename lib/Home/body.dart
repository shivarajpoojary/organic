import 'package:flutter/material.dart';

import 'package:organic/Home/advertise.dart';
import 'package:organic/Home/listveg.dart';
import 'package:organic/Home/recent.dart';
import 'package:organic/Home/veggiles.dart';
import 'package:organic/module/search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          Advertise(),
          VegList(),
          Veggiles(),
          RecentView(),
          // CategoryList(),
          // ItemList(),
          // DiscountCard(),
        ],
      ),
    );
  }
}
