import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hexcolor/hexcolor.dart';

class dottedBorderWid extends StatefulWidget {
  final String tittle;

  final String? subtittle;

  final String? description;
  final String? moretText;
  final String? exstraContent;

  bool isLast;

  dottedBorderWid(
      {super.key,
      required this.tittle,
      this.subtittle,
      this.description,
      this.moretText,
      this.exstraContent,
      this.isLast = false});

  @override
  State<dottedBorderWid> createState() => _dottedBorderWidState();
}

class _dottedBorderWidState extends State<dottedBorderWid> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 15,
            right: 18,
          ),
          child: DottedBorder(
            color: Colors.grey.shade300,
            //color of dotted/dash line
            strokeWidth: 2,
            borderType: BorderType.RRect,
            //thickness of dash/dots
            dashPattern: [10, 6],
            borderPadding: EdgeInsets.only(
                right: 5, top: 6, bottom: 5, left: widget.isLast ? 5 : 0),
            //dash patterns, 10 is dash width, 6 is space width
            child: Container(
              //inner container
              padding: EdgeInsets.only(
                left: 26,
                top: scaler.getHeight(2.5),
              ),

              //height of inner container
              width: double.infinity,
              //width to 100% match to parent container.
              color: CupertinoColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: scaler.getHeight(1),
                  ),
                  Text(
                    widget.tittle,
                    style: TextStyle(
                        color: HexColor("#57CDDA"),
                        //fontSize: scaler.getTextSize(11.2),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: scaler.getHeight(1.5),
                  ),
                  isNeed()
                      ? Container(
                          color: HexColor("#EBF6FD"),
                          width: double.maxFinite,
                          padding: EdgeInsets.all(13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              widget.subtittle != null
                                  ? Text(
                                      widget.subtittle ?? "",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          //fontSize: scaler.getTextSize(11.2),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600),
                                    )
                                  : SizedBox(),
                              SizedBox(
                                height: scaler.getHeight(0.8),
                              ),
                              widget.description != null
                                  ? Text(
                                      widget.description ?? "",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          //fontSize: scaler.getTextSize(11.2),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500),
                                    )
                                  : SizedBox(),
                              SizedBox(
                                height: scaler.getHeight(0.8),
                              ),
                              widget.moretText != null
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "........",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              //fontSize: scaler.getTextSize(11.2),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          widget.moretText ?? "",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              //fontSize: scaler.getTextSize(11.2),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  : SizedBox()
                            ],
                          ),
                        )
                      : SizedBox(),
                  Text(
                    widget.exstraContent ?? "",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        //fontSize: scaler.getTextSize(11.2),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: scaler.getHeight(1),
                  ),
                ],
              ), //background color of inner container
            ),
          ),
        ),
        Positioned(
            left: 2,
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.clock,
                    color: HexColor("#57CDDA"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "10/06/2023 01: 15 PM",
                    style: TextStyle(
                        color: HexColor("#09466C"),
                        //fontSize: scaler.getTextSize(11.2),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ))
      ],
    );
  }

  isNeed() {
    bool isn = true;
    if (widget.description == null &&
        widget.moretText == null &&
        widget.subtittle == null) {
      isn = false;
    }
    return isn;
  }
}
