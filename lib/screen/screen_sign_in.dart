import 'package:app_nano/screen/screen_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';
import 'ban_la.dart';

class ScreenSignIn extends StatefulWidget {
  @override
  _ScreenSignInState createState() => _ScreenSignInState();
}

class _ScreenSignInState extends State<ScreenSignIn> {
  TextEditingController name = new TextEditingController();
  TextEditingController name1 = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController day = new TextEditingController();
  TextEditingController month = new TextEditingController();
  TextEditingController year = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          "Đăng ký",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Dễ dàng và nhanh chóng",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              ItemInput(hint: "Họ", controller: name, width: size.width * 0.4),
              ItemInput(
                  hint: "Tên", controller: name1, width: size.width * 0.4),
              ItemInput(
                  hint: "SĐT hoặc Email", width: size.width, controller: email),
              ItemInput(hint: "Mật khẩu", width: size.width, controller: pass),
              Row(
                children: [
                  Text(
                    "Ngày sinh",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ":",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: day,
                      decoration: InputDecoration(
                          hintText: "Ngày",
                          fillColor: Color.fromRGBO(227, 227, 227, 1),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: month,
                      decoration: InputDecoration(
                          hintText: "Tháng",
                          fillColor: Color.fromRGBO(227, 227, 227, 1),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: year,
                      decoration: InputDecoration(
                          hintText: "Năm",
                          fillColor: Color.fromRGBO(227, 227, 227, 1),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 170, 170, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      "Giới tính:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                      child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 10, right: 10, top: 10),
                    ),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    alignment: Alignment.centerRight,
                    onChanged: (value) {},
                    hint: Container(
                      child: Center(
                          child: Text(
                        "-Chọn-",
                        textAlign: TextAlign.center,
                      )),
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "Nam",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        value: "Nam",
                        alignment: Alignment.center,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Nữ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        value: "Nữ",
                        alignment: Alignment.center,
                      ),
                    ],
                  ))
                ],
              ),
              Divider(
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage(check: false,)));
                },
                child: Container(
                  height: 60,
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Hoàn tất",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Điều khoản sử dụng",
                    style: TextStyle(
                      color: colorMain,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemInput(
      {String? hint,
      TextEditingController? controller,
      required double width}) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: hint,
                  fillColor: Color.fromRGBO(227, 227, 227, 1),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(170, 170, 170, 1), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(170, 170, 170, 1), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(170, 170, 170, 1), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15)),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "*",
            style: TextStyle(fontSize: 17, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
