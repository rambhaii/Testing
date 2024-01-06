import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_by_ram/view/favorite_Screen.dart';
import 'package:test_by_ram/view/home_screen.dart';
import 'package:test_by_ram/view/setting_screen.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  var selectedPage = [
    HomeScreen(),
    SettingScreen(),
    FavoriteScreen(),
    HomeScreen(),
  ];

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: selectedPage[selectedIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.grey,
        color: Colors.tealAccent,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle_sharp,
            size: 25,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
