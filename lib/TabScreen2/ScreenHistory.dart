import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';

import 'SceHisWdiget2tracking.dart';
import 'ScrHisWidget1.dart';
import 'ticketflowDeatails.dart';

class ScreenHistory extends StatefulWidget {
  const ScreenHistory({super.key});

  @override
  State<ScreenHistory> createState() => _ScreenHistoryState();
}

class _ScreenHistoryState extends State<ScreenHistory> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            widget1(),
            // widget2contact(),

            SizedBox(
              height: scaler.getHeight(1),
            ),
            widgetticketFlowDetails(),
            SizedBox(
              height: scaler.getHeight(4),
            ),
          ],
        ),
      ),
    );
  }
}
