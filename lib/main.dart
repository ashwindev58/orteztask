import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TabScreen1/TBViewTicketDetails.dart';
import 'TabScreen2/ScreenHistory.dart';
import 'bottomNavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: MyTabBarView(),
        home: BottomNavgationBar1212(),
      ),
    );
  }
}


