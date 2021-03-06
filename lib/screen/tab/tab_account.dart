import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../color_main.dart';
import '../chat.dart';

class TabAccount extends StatefulWidget {
  bool check ;
  TabAccount({required this.check});
  @override
  _TabAccountState createState() => _TabAccountState();
}

class _TabAccountState extends State<TabAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEDEDED),
                  ),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.person_fill,
                      size: 70,
                      color: colorMain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "BS. VŨ NAM Khánh".toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "ID: BS12345".toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Ngày sinh: 03/07/1970",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Chuyên khoa: Tai - Mũi - Họng",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Bệnh viện Đa khoa tỉnh Vĩnh Phúc",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Số bệnh nhân kết nối: 85",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Số ca khám hôm nay: 3",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 20,),

                widget.check ? InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenChat()));

                  },
                  child: Container(
                    height: 90,
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    decoration: BoxDecoration(
                      color: colorMain,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                          "Kết nối với bệnh nhân",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                  ),
                ) : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
