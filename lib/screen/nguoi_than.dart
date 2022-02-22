import 'package:app_nano/screen/tab_nguoi_than/tab_Home.dart';
import 'package:app_nano/screen/tab_nguoi_than/tab_account.dart';
import 'package:app_nano/screen/tab_nguoi_than/tab_notifi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class NguoiThan extends StatefulWidget {

  @override
  _NguoiThanState createState() => _NguoiThanState();
}

class _NguoiThanState extends State<NguoiThan> {
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
            TabHomeNT(),
            TabNotifiNT(),
            TabAccountNT(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val){
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
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home,size: 30,),title: Text("Trang chủ")),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail,size: 30,),title: Text("Thông báo")),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_fill,size: 30,),title: Text("Cá nhân")),
        ],
      ),
    );
  }



}
