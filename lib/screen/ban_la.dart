import 'package:app_nano/screen/screen_benh_nhan.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';
import 'Screen_bacsi.dart';

class BanLa extends StatefulWidget {
  @override
  _BanLaState createState() => _BanLaState();
}

class _BanLaState extends State<BanLa> {
  Color col = Color.fromRGBO(23,112,219,1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Bạn là...",
            style: TextStyle(
                color: colorMain,
                fontSize: 40,
                fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBacSi()));
            },
            child: Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              decoration: BoxDecoration(
                  color: col,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromRGBO(23,112,219,1), width: 1)),
              child: Center(
                  child: Text(
                "Bác sĩ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              )),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBenhNhan()));
            },
            child: Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: col,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xff333399), width: 1)),
              child: Center(
                  child: Text(
                "Bênh nhân",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
