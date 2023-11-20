import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';

class FileImageWidget extends StatefulWidget {
  const FileImageWidget({super.key});

  @override
  State<FileImageWidget> createState() => _FileImageWidgetState();
}

class _FileImageWidgetState extends State<FileImageWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler=ScreenScaler()..init(context);
    return Container(
      alignment: Alignment.topLeft, color: HexColor('#F1F2F5'),
      // margin: EdgeInsets.only(left: scaler.getWidth(3)),
      padding: EdgeInsets.only(
        left: scaler.getWidth(5),
        right: scaler.getWidth(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: scaler.getHeight(0.5),
          ),
          Text("File"),
          SizedBox(
            height: scaler.getHeight(1),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i <= 4; i++)
                  Container(
                    margin: EdgeInsets.only(left: scaler.getWidth(2)),
                    height: scaler.getHeight(10),
                    width: scaler.getWidth(20),
                    child: Image.asset("assets/$i.png", fit: BoxFit.cover),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
