import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

import 'SceHisWdiget2tracking.dart';

class widgetticketFlowDetails extends StatefulWidget {
  const widgetticketFlowDetails({super.key});

  @override
  State<widgetticketFlowDetails> createState() =>
      _widgetticketFlowDetailsState();
}

class _widgetticketFlowDetailsState extends State<widgetticketFlowDetails> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Container(
        margin: EdgeInsets.symmetric(
            vertical: scaler.getHeight(2), horizontal: scaler.getWidth(5)),
        child: Column(
          children: [
            dottedBorderWid(
              tittle: "Call Report by Appu",
              subtittle: "Summary",
              moretText: "More",
              description:
                  "Summary .Lorem ipsum dolor sit amet\nconsectur. vouptar sed",
            ),
            dottedBorderWid(
              tittle: "Ticket Merged",
              subtittle: "Ticket 1862 Merged by Biju",
              moretText: "View Ticket Details",
            ),
            dottedBorderWid(tittle: "Assign to Appu"),
            dottedBorderWid(
              tittle: "Ticket Created",
              exstraContent: "Ticket Created by Biju",
              isLast: true,
            )
          ],
        ));
  }
}
