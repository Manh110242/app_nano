import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../color_main.dart';
import '../chat.dart';

class TabAccountBN extends StatefulWidget {
  @override
  _TabAccountBNState createState() => _TabAccountBNState();
}

class _TabAccountBNState extends State<TabAccountBN> {

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
                        "BN. VŨ Hoài Nam".toUpperCase(),
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
                        "ID: BN12345".toUpperCase(),
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
                  "Ngày sinh: 03/08/1960",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Nghề nghiệp: Đã về hưu",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Địa chỉ: Vĩnh Yên, Vĩnh Phúc",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Bác sĩ phụ trách: BS123654 ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Lịch khám sắp tới: ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  "   - STT: 12",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  "   - Thời gian: 20h00, 18/01/2021 ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
