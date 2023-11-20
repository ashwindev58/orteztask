import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widget2contact.dart';
import 'widget4.dart';

// D:\orteztask\build\app\outputs\flutter-apk

import 'FileImageWidget.dart';
import 'Widget1.dart';
import 'widget4.dart';

class ScreenTiceketDetails extends StatefulWidget {
  const ScreenTiceketDetails({super.key});

  @override
  State<ScreenTiceketDetails> createState() => _ScreenTiceketDetailsState();
}

class _ScreenTiceketDetailsState extends State<ScreenTiceketDetails> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            widget1(),
            widget2contact(),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: scaler.getWidth(3),
                //vertical: scaler.getHeight(1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                    onPressed: null,
                    label: Text(
                      "Alternative Contacts",
                      style: TextStyle(
                          color: HexColor("#09466f"),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    ),
                    icon: Icon(
                      Icons.phone_outlined,
                      color: HexColor("#09466f"),
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            widget4moreDetails(),
            SizedBox(
              height: scaler.getHeight(2),
            ),
            FileImageWidget(),
            SizedBox(
              height: scaler.getHeight(4),
            ),
          ],
        ),
      ),
    );
  }
}
