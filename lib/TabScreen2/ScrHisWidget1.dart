import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';

import 'SceHisWdiget2tracking.dart';

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler=ScreenScaler()..init(context);
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(
          vertical: scaler.getHeight(2),
          horizontal: scaler.getWidth(5)),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: HexColor("#F6FAFE"),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 2,
                spreadRadius: 2)
          ],
          borderRadius: BorderRadius.circular(5)),
      //height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: scaler.getWidth(3),
              backgroundColor: Colors.blue,
              child: Text(
                "C",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            horizontalTitleGap: scaler.getWidth(2),
            title: Container(
              padding: EdgeInsets.only(top: 12, bottom: 2),
              child: Text(
                "Ticket Id",
                style: TextStyle(
                    color: HexColor("#09466C"),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Customer Name",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Ticket Summary",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            trailing: Text(
              "09/06/2023 10:12 AM",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            padding:
            EdgeInsets.symmetric(horizontal: scaler.getWidth(2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: scaler.getHeight(1),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                        child: Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: scaler.getTextSize(10),
                              color: Colors.red,
                            ),SizedBox(width: 3,),
                            Text(
                              "Priority Level",
                              style: TextStyle(
                                  color: Colors.grey,
                                  // fontSize: scaler.getTextSize(11.2),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: HexColor("#FAF0E5"),
                            border:
                            Border.all(color: Colors.orangeAccent.shade100),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      SizedBox(
                        width: scaler.getWidth(5),
                      ),
                      Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: HexColor("#E1F1F2"),
                            border: Border.all(color: HexColor("#57CDDA")),
                            borderRadius: BorderRadius.circular(3)),
                        // padding: scaler.getPaddingAll(6),
                        child: Text(
                          " open ",
                          style: TextStyle(
                              color: HexColor("#57CDDA"),
                              //fontSize: scaler.getTextSize(11.2),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: scaler.getWidth(5),
                      ),
                      Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: HexColor("#DDE8FD"),
                            border: Border.all(color: HexColor("#9BB7F6")),
                            borderRadius: BorderRadius.circular(3)),
                        // padding: scaler.getPaddingAll(6),
                        child: Text(
                          "1 Day 1 hr 10 min",
                          style: TextStyle(
                              color: HexColor("#9BB7F6"),
                              // fontSize: scaler.getTextSize(10),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            " Check in by Gopalakrishnan - 09/06/2023",
            style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 7,
          ),

        ],
      ),
    );
  }
}
