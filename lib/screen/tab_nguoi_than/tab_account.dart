import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../color_main.dart';
import '../chat.dart';

class TabAccountNT extends StatefulWidget {
  @override
  _TabAccountNTState createState() => _TabAccountNTState();
}

class _TabAccountNTState extends State<TabAccountNT> {

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
                        "TN. BN. VŨ Khánh linh".toUpperCase(),
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
                        "ID: TN12345".toUpperCase(),
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
                  "Ngày sinh: 03/08/1989",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Nghề nghiệp: Kế toán",
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
                  "Người thân kết nối: BN123774",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Bác sĩ kết nối: BS123654",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Lịch khám sắp tới: Không",
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
