import 'package:app_nano/screen/tab/tab_Home.dart';
import 'package:app_nano/screen/tab/tab_account.dart';
import 'package:app_nano/screen/tab/tab_lich.dart';
import 'package:app_nano/screen/tab/tab_notifi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class ScreenHomePage extends StatefulWidget {
  @override
  _ScreenHomePageState createState() => _ScreenHomePageState();
}

class _ScreenHomePageState extends State<ScreenHomePage> {
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
            TabHome(),
            TabLich(),
            TabNotifi(),
            TabAccount(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Stack(
          children: [
            Row(
              children: List.generate(
                4,
                (index) => ItemBottom(
                  index == 0
                      ? CupertinoIcons.home
                      : index == 1
                          ? CupertinoIcons.calendar
                          : index == 2
                              ? CupertinoIcons.bell
                              : CupertinoIcons.person,
                  index,
                ),
              ),
            ),
            Positioned(
                top: 2,
                right: MediaQuery.of(context).size.width * 0.33,
                child: InkWell(
                  onTap: () {
                    _controller.animateToPage(
                      page,
                      duration: Duration(milliseconds: 1),
                      curve: Curves.ease,
                    );
                    page = 2;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
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
