import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';

class widget4moreDetails extends StatefulWidget {
  const widget4moreDetails({super.key});

  @override
  State<widget4moreDetails> createState() => _widget4moreDetailsState();
}

class _widget4moreDetailsState extends State<widget4moreDetails> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler=ScreenScaler()..init(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: scaler.getWidth(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.perm_contact_calendar_outlined,
                color: HexColor("#173640"),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Address : ",
                    style: TextStyle(
                      //color: HexColor("#A9CFF3"),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text(
                              "Lorem  dolor sit amet consectetur.",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: scaler.getHeight(0.7),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text(
                              "Lorem dolor sit amet consectetur.",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: scaler.getHeight(0.7),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: scaler.getHeight(1),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.web_asset,
                color: HexColor("#173640"),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Asset : ",
                    style: TextStyle(
                      //color: HexColor("#A9CFF3"),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Lhshh(Description)",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: scaler.getHeight(0.7),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: scaler.getHeight(1),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                CupertinoIcons.ticket,
                color: HexColor("#173640"),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Ticket Source : ",
                    style: TextStyle(
                      //color: HexColor("#A9CFF3"),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: scaler.getHeight(0.7),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: scaler.getHeight(1),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.list,
                color: HexColor("#173640"),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Group : ",
                    style: TextStyle(
                      //color: HexColor("#A9CFF3"),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: scaler.getHeight(0.7),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
