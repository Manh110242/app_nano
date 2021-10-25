import 'package:flutter/material.dart';

import '../color_main.dart';
import 'ket_qua.dart';

class ScreenBenhDiChuyen extends StatefulWidget {
  @override
  _ScreenBenhDiChuyenState createState() => _ScreenBenhDiChuyenState();
}

class _ScreenBenhDiChuyenState extends State<ScreenBenhDiChuyen> {
  TextEditingController text1 = new TextEditingController();
  TextEditingController text2 = new TextEditingController();
  TextEditingController text3 = new TextEditingController();
  TextEditingController text4 = new TextEditingController();
  TextEditingController text5 = new TextEditingController();
  TextEditingController text6 = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorMain,
        title: Text('Bện di truyền'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   height: 60,
              //   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              //   decoration: BoxDecoration(
              //     color: colorMain,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Center(
              //     child: Text(
              //       "Bện di truyền",
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 17,
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle,
                      color: colorMain,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                          "Hãy liệt kê bệnh  di truyền  của 2 thế hệ  gần bạn nhâts trong gi đình của bạn nếu có.",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ItemInput(title: "Ông nội", controller: text1),
              ItemInput(title: "Bà nội", controller: text2),
              ItemInput(title: "Ông ngoại", controller: text3),
              ItemInput(title: "Bà ngoại", controller: text4),
              ItemInput(
                  title: ""
                      "Bố",
                  controller: text5),
              ItemInput(title: "Mẹ", controller: text6),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                            color: colorMain,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Quay lại",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KetQua()));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                            color: colorMain,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Tiếp",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemInput({String? title, TextEditingController? controller}) {
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
                  hintText: "Tên bệnh",
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
