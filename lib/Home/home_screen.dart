import 'package:flutter/material.dart';
import 'package:organic/Home/body.dart';
import 'package:organic/Home/homeappbar.dart';
import 'package:organic/module/botton_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
