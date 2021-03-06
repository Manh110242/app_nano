import 'package:app_nano/screen/screen_home_page.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class ScreenTiep extends StatefulWidget {

  @override
  _ScreenTiepState createState() => _ScreenTiepState();
}

class _ScreenTiepState extends State<ScreenTiep> {
  TextEditingController   mota = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        title: Text("Đăng ký hồ sơ phòng khám"),
        backgroundColor: colorMain,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              //   color: colorMain,
              //   width: double.infinity,
              //   child: Text(
              //     "Đăng ký hồ sơ phòng khám",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.w700,
              //         fontSize: 22),
              //   ),
              // ),
              SizedBox(height: 15,),
              Text(
                "( phiếu này không bắt buộc )",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 15,),
              ItemInput(
                  controller: mota,
                  title: "Giới thiệu về phòng khám:",
                  hint: "Nhập mô tả"
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Một sô hình ảnh cơ sở vật chât:",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        textAlign: TextAlign.center,
                        onTap: (){
                          print("upload");
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            hintText: "Upload",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontStyle: FontStyle.italic
                            ),
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
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenHomePage()));
                },
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      color: colorMain,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text(
                      "Hoàn tất",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget ItemInput(
      {String? hint, String? title, TextEditingController? controller,}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
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
