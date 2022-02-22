import 'package:flutter/material.dart';

import '../../color_main.dart';

class TabNotifiNT extends StatefulWidget {
  @override
  _TabNotifiNTState createState() => _TabNotifiNTState();
}

class _TabNotifiNTState extends State<TabNotifiNT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        leadingWidth: 0,
        leading: Container(),
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
            text: "Người bệnh đã ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          TextSpan(
            text: "quên uống thuốc",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w700
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
