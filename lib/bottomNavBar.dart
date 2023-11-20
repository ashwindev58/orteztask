import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'main.dart';
import 'tabbarView.dart';

/// Flutter code sample for [NavigationBar].

class BottomNavgationBar1212 extends StatefulWidget {
  const BottomNavgationBar1212({super.key});

  @override
  State<BottomNavgationBar1212> createState() => _BottomNavgationBar1212State();
}

class _BottomNavgationBar1212State extends State<BottomNavgationBar1212> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.transparent,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              CupertinoIcons.ticket_fill,
              color: Colors.teal,
            ),
            icon: Icon(
              CupertinoIcons.ticket,
              color: Colors.grey,
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.widgets_outlined, color: Colors.teal),
            icon: Icon(
              Icons.widgets_outlined,
              color: Colors.grey,
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications_active, color: Colors.teal),
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.grey,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: CircleAvatar(
              radius: 18,
              // Adjust the radius as needed
              backgroundColor: Colors.grey[200],
              // Set a background color for the circle
              backgroundImage: AssetImage("assets/img.png"),
              child: Container(
                // You can add a child widget inside the circle if needed
                alignment: Alignment.bottomRight,
                child: SizedBox(),
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        MyTabBarView(),
        Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#09466C"),
            title: Text("Home"),
          ),
          body: Center(
            child: Text(
              "No data found",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#09466C"),
            title: Text("Notification"),
          ),
          body: Center(
            child: Text(
              "No data found",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#09466C"),
            title: Text("Profile"),
          ),
          body: Center(
            child: Text(
              "No data found",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}
