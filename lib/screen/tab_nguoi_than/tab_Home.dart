import 'package:app_nano/screen/chat.dart';
import 'package:app_nano/screen/ket_noi_bs.dart';
import 'package:app_nano/screen/lich_kham_cua_toi.dart';
import 'package:app_nano/screen/theo_gioi_lo_tring.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../color_main.dart';
import '../create_hs_benh.dart';
import '../lich_su.dart';
import '../screen_sang_loc_benh.dart';
import '../tao_lo_trinh.dart';

class TabHomeNT extends StatefulWidget {
  @override
  _TabHomeNTState createState() => _TabHomeNTState();
}

class _TabHomeNTState extends State<TabHomeNT> {
  TextEditingController search = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.contain,
          width: 60,
          height: 60,
        ),
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
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorMain, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenChat()));
              },
              child: Container(
                height: 90,
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  color: colorMain,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                      "Liên lạc bệnh nhân",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenChat()));
              },
              child: Container(
                height: 90,
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  color: colorMain,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                      "Liên lạc bác sĩ",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TheoGioiLoTrinh()));
              },
              child: Container(
                height: 90,
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  color: colorMain,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                      "Kiểm tra liệu trình bệnh nhân",
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
