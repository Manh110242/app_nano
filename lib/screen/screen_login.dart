import 'package:app_nano/screen/screen_home.dart';
import 'package:app_nano/screen/screen_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class ScreenLogin extends StatefulWidget {

  @override
  _ScreenLoginState createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  late TextEditingController account;
  late TextEditingController pass;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    account = TextEditingController();
    pass = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/logo_app_flutter.png',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              itemInput("SĐT hoặc Email", CupertinoIcons.person_fill, account,false),
              SizedBox(
                height: 15,
              ),
              itemInput("Mật khẩu", CupertinoIcons.lock_fill, pass, true),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(check: true,)));
                  // if (account.text != "" && pass.text != "") {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => HomePage()));
                  // } else {
                  //   showDialog(
                  //       context: context,
                  //       builder: (conetx) => AlertDialog(
                  //         content: Text("Vui lòng nhập đầy đủ thông tin"),
                  //         actions: [
                  //           FlatButton(
                  //               onPressed: () {
                  //                 Navigator.pop(context);
                  //               },
                  //               child: Text("Đóng"))
                  //         ],
                  //       ));
                  // }
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(23,122,219,1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                      )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Quên mật khẩu",
                        style: TextStyle(color: Color.fromRGBO(23,122,219,1)),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {

                          },
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScreenSignIn()));
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(84,194,66,1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                        "Đăng ký",
                        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemInput(
      String hint, IconData icon, TextEditingController controller, bool obscureText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        obscureText: obscureText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        decoration: InputDecoration(
            // prefixIcon: Icon(
            //   icon,
            //   color: Colors.white,
            // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromRGBO(141,141,141,1),width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromRGBO(141,141,141,1),width: 1),
          ),

          hintText: hint,
          hintStyle: TextStyle (
            color:  Color.fromRGBO(141,141,141,1),
            fontSize: 15,
          ),
          border: InputBorder.none,
          fillColor: Color.fromRGBO(227,227,227,1),
          filled: true,
          //contentPadding: EdgeInsets.only(left: 15, right: 15, top: 15),
        ),
      ),
    );
  }
}
