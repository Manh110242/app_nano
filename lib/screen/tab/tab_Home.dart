import 'package:app_nano/screen/mau_phieu_kham.dart';
import 'package:app_nano/screen/tab/tab_account.dart';
import 'package:app_nano/screen/tab/tab_lich.dart';
import 'package:flutter/material.dart';

import '../../color_main.dart';
import '../chat.dart';
import '../ho_so_benh_nhan.dart';

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        leading: Image.asset("assets/images/logo.png",fit: BoxFit.contain, width: 60, height: 60,),
        title: Container(
          height: 40,
          child: TextField(
            controller: search,
            decoration: InputDecoration(
              hintText: "Tìm kiếm",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorMain, width: 0.5),
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TabLich()));
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>MauPhieuKham()));
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
                  "Lịch khám",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HoSoBenhNhan()));
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
                  "Hồ sơ bệnh nhân",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
            ),
            InkWell(
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
                    "Kết nối bệnh nhân",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
