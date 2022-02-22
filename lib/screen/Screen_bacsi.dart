import 'package:app_nano/screen/screen_home_page.dart';
import 'package:app_nano/screen/screen_tiep.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class ScreenBacSi extends StatefulWidget {
  @override
  _ScreenBacSiState createState() => _ScreenBacSiState();
}

class _ScreenBacSiState extends State<ScreenBacSi> {
  TextEditingController phone = new TextEditingController();
  TextEditingController namepk = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController giayphep = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController cmt = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          "Đăng ký hồ sơ phòng khám",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 110,
                margin: EdgeInsets.only(top: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color.fromRGBO(113,113,113,1),width: 5),
                ),
                child: Center(
                  child: Text(
                    "Cập nhật ảnh phòng khám",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ItemInput(
                  controller: phone,
                  hint: "Tên phòng khám "),
              ItemInput(
                  controller: namepk,
                  hint: "Địa chỉ"),
              ItemInput(
                  controller: address,  hint: "Giấy phép hành nghề"),
              ItemInput(
                  controller: giayphep,
                  hint: "Tên người sở hửu"),
              ItemInput(
                  controller: name,
                  hint: "Nhập tên người sở hữu"),
              ItemInput(
                  controller: cmt,
                  hint: "Số CMND/CCCD"),

              Divider(thickness: 1,),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenHomePage()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10  )),
                  child: Center(
                    child: Text(
                      "Hoàn tất",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize:22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemInput(
      {String? hint, TextEditingController? controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hint,
            fillColor: Color.fromRGBO(227,227,227,1),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(170,170,170,1), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(170,170,170,1), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(170,170,170,1), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 15)),
      ),
    );
  }
}
