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
              itemInput("Tài khoản", CupertinoIcons.person_fill, account,false),
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
                          builder: (context) => HomePage()));
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
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(102,150,200,1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Chưa có tài khoản! ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: "Đăng ký",
                        style: TextStyle(color: colorMain),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenSignIn()));
                          },
                      ),
                    ],
                  )),
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextFormField(
          controller: controller,
          cursorColor: Colors.white,
          obscureText: obscureText,
          style: TextStyle(
            color: Colors.grey.shade200,
            fontSize: 15,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.white,
            ),
            hintText: hint,
            hintStyle: TextStyle (
              color:  Colors.grey.shade400,
              fontSize: 15,
            ),
            border: InputBorder.none,
            fillColor: Color.fromRGBO(23,112,219,1),
            filled: true,
            contentPadding: EdgeInsets.only(left: 15, right: 15, top: 15),
          ),
        ),
      ),
    );
  }
}
