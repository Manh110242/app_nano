import 'package:flutter/material.dart';

import '../../color_main.dart';

class TabNotifi extends StatefulWidget {
  @override
  _TabNotifiState createState() => _TabNotifiState();
}

class _TabNotifiState extends State<TabNotifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: Container(),
        //leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          "Thông báo",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: false,
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
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black, width: 0.5))),
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        text: TextSpan(children: [
          TextSpan(
            text: "Đã nhận lịch của ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          TextSpan(
            text: "Nguyễn Văn A",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 17),
          ),
          TextSpan(
            text: " vào 15/12 15h30",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ]),
      ),
    );
  }
}
