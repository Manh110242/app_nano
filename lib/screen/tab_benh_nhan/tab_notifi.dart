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
        //leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        leadingWidth: 0,
        leading: Container(),
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
          color:Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black, width: 0.5))),
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        text: TextSpan(children: [
          TextSpan(
            text: "Đã đặt lịch thành công ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
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
