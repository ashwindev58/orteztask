import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';

class widget2contact extends StatefulWidget {
  const widget2contact({super.key});

  @override
  State<widget2contact> createState() => _widget2contactState();
}

class _widget2contactState extends State<widget2contact> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler=ScreenScaler()..init(context);
    return  Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(
          vertical: scaler.getHeight(0.3),
          horizontal: scaler.getWidth(5)),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: HexColor("#EBF6FD"),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 2,
                spreadRadius: 2)
          ],
          borderRadius: BorderRadius.circular(5)),
      //height: 140,
      child: ListTile(
        horizontalTitleGap: scaler.getWidth(2),
        title: Container(
          padding: EdgeInsets.only(top: 12, bottom: 2),
          child: Text(
            "Contacted Person Name",
            style: TextStyle(
                color: HexColor("#09466C"),
                fontFamily: 'Roboto',
                fontSize: scaler.getTextSize(12.5),
                fontWeight: FontWeight.w500),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 7,
            ),
            Text(
              "98765432",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "cp@gmail.com",
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
        trailing: Container(
          //padding: scaler.getPaddingAll(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.blue.shade400,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Container(
              padding: EdgeInsets.all(13),
              child: Icon(Icons.call_outlined,
                  color: Colors.white, size: 25)),
        ),
      ),
    );
  }
}
