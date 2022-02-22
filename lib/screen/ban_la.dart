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
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBacSi()));
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              decoration: BoxDecoration(
                  color: col,
                  borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Bác sĩ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
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
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              decoration: BoxDecoration(
                  color: col,
                  borderRadius: BorderRadius.circular(20),),
              child: Center(
                  child: Text(
                "bệnh nhân",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
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
