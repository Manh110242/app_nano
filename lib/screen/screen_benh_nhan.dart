import 'package:app_nano/screen/tab/tab_Home.dart';
import 'package:app_nano/screen/tab/tab_account.dart';
import 'package:app_nano/screen/tab/tab_lich.dart';
import 'package:app_nano/screen/tab/tab_notifi.dart';
import 'package:app_nano/screen/tab_benh_nhan/tab_Home.dart';
import 'package:app_nano/screen/tab_benh_nhan/tab_account.dart';
import 'package:app_nano/screen/tab_benh_nhan/tab_lich.dart';
import 'package:app_nano/screen/tab_benh_nhan/tab_notifi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class ScreenBenhNhan extends StatefulWidget {
  @override
  _ScreenBenhNhanState createState() => _ScreenBenhNhanState();
}

class _ScreenBenhNhanState extends State<ScreenBenhNhan> {
  int page = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new PageController(
        initialPage: page, keepPage: true, viewportFraction: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              TabHomeBN(),
              TabNotifiBN(),
              TabAccountBN(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            page = val;
            _controller.animateToPage(
              page,
              duration: Duration(milliseconds: 1),
              curve: Curves.ease,
            );
            setState(() {});
          },
          unselectedItemColor: Colors.grey,
          fixedColor: colorMain,
          currentIndex: page,
          elevation: 5,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home, size: 30,),
                title: Text("Trang chủ")),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail, size: 30,),
                title: Text("Thông báo")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_fill, size: 30,),
                title: Text("Cá nhân")),
          ],
        ),
    );
  }

  Widget ItemBottom(IconData iconData, index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          page = index;
          _controller.animateToPage(
            page,
            duration: Duration(milliseconds: 1),
            curve: Curves.ease,
          );
          setState(() {});
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black, width: 0.5),
                left: BorderSide(color: Colors.black, width: 0.5),
              )),
          child: Icon(
            iconData,
            size: 30,
            color: index == page ? colorMain : Colors.black,
          ),
        ),
      ),
    );
  }
}
