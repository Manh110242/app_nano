import 'package:app_nano/screen/screen_benh_nhan.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class TaoLoTrinh extends StatefulWidget {
  @override
  _TaoLoTrinhState createState() => _TaoLoTrinhState();
}

class _TaoLoTrinhState extends State<TaoLoTrinh> {
  TextEditingController name = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController time = new TextEditingController();
  TextEditingController chedo = new TextEditingController();
  TextEditingController tapluyen = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorMain,
        title: Text('Tạo lộ trình điều trị'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   height: 50,
                //   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                //   decoration: BoxDecoration(
                //     color: colorMain,
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Center(
                //       child: Text(
                //     "Tạo lộ trình điều trị",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 17,
                //         fontWeight: FontWeight.bold),
                //   )),
                // ),
                SizedBox(height: 15,),
                ItemInput(
                    hint: "Nhập họ và tên",
                    title: "Họ và tên",
                    controller: name),
                ItemInput(hint: "Nhập tuổi", title: "Tuổi", controller: age),
                ItemInput(
                    hint: "Nhập thời  gian",
                    title: "Thời gin điều trị",
                    controller: name),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Giờ uống thuốc:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: colorMain, width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "12:30",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Thuốc cần uống:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: colorMain, width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Paracetamol",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Lưu ý:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: colorMain, width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Uống sau khi ăn",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ItemInput1(
                    hint: "Nhập chế độ ăn",
                    title: "Chế độ ăn uống (nếu có)",
                    controller: chedo),
                ItemInput1(hint: "Nhập chế độ tập luyện", title: "Chế độ tập luyện (nếu có)", controller: tapluyen),

                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => ScreenBenhNhan()),
                              (Route<dynamic> route) => false,
                        );

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: colorMain),
                        child: Text(
                          "Lưu",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ItemInput(
      {String? hint, String? title, TextEditingController? controller}) {
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

  Widget ItemInput1(
      {String? hint, String? title, TextEditingController? controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller,
            maxLines: 3,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: colorMain, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorMain, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorMain, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
