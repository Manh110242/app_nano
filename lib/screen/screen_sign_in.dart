import 'package:flutter/material.dart';

import '../color_main.dart';
import 'ban_la.dart';

class ScreenSignIn extends StatefulWidget {
  @override
  _ScreenSignInState createState() => _ScreenSignInState();
}

class _ScreenSignInState extends State<ScreenSignIn> {
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorMain,
        title: Text("Đăng ký tài khoản"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   height: 70,
              //   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              //   decoration: BoxDecoration(
              //     color: colorMain,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Center(
              //       child: Text(
              //     "Đăng ký tài khoản",
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 22,
              //         fontWeight: FontWeight.bold),
              //   )),
              // ),
              // Divider(
              //   thickness: 2,
              // ),
              SizedBox(height: 100,),
              ItemInput(
                hint: "Nhập họ tên",
                title: "Họ và tên",
                controller: name
              ),
              ItemInput(
                  hint: "Nhập số điện thoại",
                  title: "Số điện thoại",
                  controller: phone
              ),
              ItemInput(
                  hint: "Nhập tên đăng nhập",
                  title: "Tên dăng nhập",
                  controller: username
              ),
              ItemInput(
                  hint: "Nhập mật khẩu",
                  title: "Mật khẩu",
                  controller: pass
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BanLa()));
                },
                child: Container(
                  height: 40,
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    color: colorMain,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                        "Hoàn tất",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemInput(
      {String? hint, String? title, TextEditingController? controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: colorMain, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorMain, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorMain, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15)),
            ),
          ),
        ],
      ),
    );
  }
}
