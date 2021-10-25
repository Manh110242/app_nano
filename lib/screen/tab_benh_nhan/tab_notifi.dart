import 'package:flutter/material.dart';

import '../../color_main.dart';

class TabNotifiBN extends StatefulWidget {
  @override
  _TabNotifiBNState createState() => _TabNotifiBNState();
}

class _TabNotifiBNState extends State<TabNotifiBN> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Thông báo",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Container(),
        leadingWidth: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            3,
            (index) => ItemNotifi(index == 2 ? true : false),
          ),
        ),
      ),
    );
  }

  Widget ItemNotifi(check) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: !check ? colorMain.withOpacity(0.1) : Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        text: !check
            ? TextSpan(children: [
                TextSpan(
                  text: "Lịch khám bệnh của bạn với bác sĩ ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                TextSpan(
                  text: "Nguyễn Văn A",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
                TextSpan(
                  text: " bắt đầu sau 30 phút",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ])
            : TextSpan(children: [
                TextSpan(
                  text: "Chúc mừng! ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
                TextSpan(
                  text: "Bạn đã đăng ký thành công.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ]),
      ),
    );
  }
}
