import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../color_main.dart';

class TabAccountBN extends StatefulWidget {
  @override
  _TabAccountBNState createState() => _TabAccountBNState();
}

class _TabAccountBNState extends State<TabAccountBN> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        centerTitle: true,
        title: Text("Tài khoản"),
        backgroundColor: colorMain,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 60, bottom: 15),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: colorMain, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Bệnh nhân Nguyễn Văn A",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorMain,
                      ),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "Hồ sơ cá nhân",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: colorMain, width: 1))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: colorMain,
                        size: 17,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Hồ sơ cá nhân",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: colorMain, width: 1))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: colorMain,
                        size: 17,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Cài đặt cá nhân",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Nôi dung",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: colorMain, width: 1))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: colorMain,
                        size: 17,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Quản lý hồ sơ khách hàng",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: colorMain, width: 1))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: colorMain,
                        size: 17,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Báo cáo, yêu cầu khách hàng",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hỗ trợ và chính sách",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
