import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TabScreen1/TBViewTicketDetails.dart';
import 'TabScreen2/ScreenHistory.dart';

class MyTabBarView extends StatefulWidget {
  @override
  _MyTabBarViewState createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool iishow=true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      iishow=!iishow;
      // Your logic to handle tab selection
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler=ScreenScaler()..init(context);
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            color: HexColor("#09466C"),
            // 09466CFF
            margin: EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_outlined),
                    padding: EdgeInsets.all(0)),
                TabBar(
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  onTap: (a) {
                    print("object");
                    print(_tabController.index);

                  },
                  indicatorColor: Colors.teal.shade300,
                  indicatorWeight: 4,
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'Ticket Details'),
                    Tab(text: 'History'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [ScreenTiceketDetails(), ScreenHistory()],
                  ),
                ),
              ],
            ),
          ),
        ),
            iishow
            ? Positioned(
              right: scaler.getWidth(7),
              top: scaler.getHeight(5),
              child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.delete,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(
                      width: scaler.getWidth(4),
                    ),
                    Icon(
                      Icons.edit_calendar_outlined,
                      size: 30,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: scaler.getWidth(4),
                    ),
                    CircleAvatar(
                      radius: 19,
                      child: Icon(
                        Icons.send_outlined,
                        size: 24,
                        color: Colors.white54,
                      ),
                      backgroundColor: Colors.teal,
                    )
                  ],
                ),
            )
            : SizedBox()
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
