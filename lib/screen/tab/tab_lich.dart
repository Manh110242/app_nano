import 'package:flutter/material.dart';

import '../../color_main.dart';

class TabLich extends StatefulWidget {
  @override
  _TabLichState createState() => _TabLichState();
}

class _TabLichState extends State<TabLich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: colorMain,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(
                          "Lịch khám hôm nay",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: colorMain, width: 1)),
                        child: Center(
                            child: Text(
                          "Lịch khám trong tháng",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: colorMain, borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Bộ lọc",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration:
                          BoxDecoration(color: colorMain, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Nhấn vào để xem thông tin cụ thể",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: colorMain,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ItemList(
                  text1: "Nguyễn Văn A - 0963***167",
                  text2: "8h30 sáng",
                  check: true),
              ItemList(
                  text1: "Nguyễn Văn B - 0984***167",
                  text2: "8h30 sáng",
                  check: false),
              ItemList(
                  text1: "Nguyễn Văn C - 0984***183",
                  text2: "8h30 sáng",
                  check: false),
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemList(
      {required String text1, required String text2, required bool check}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: check ? colorMain : Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: colorMain, width: 1)),
              child: Column(
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        color: !check ? Colors.black : Colors.white,
                        fontSize: 17),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                        color: !check ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 80,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                color: check ? colorMain : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: colorMain, width: 1)),
            child: Center(
              child: Text(
                "Đã khám",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: !check ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
