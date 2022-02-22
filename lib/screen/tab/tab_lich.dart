import 'package:flutter/material.dart';

import '../../color_main.dart';

class TabLich extends StatefulWidget {
  @override
  _TabLichState createState() => _TabLichState();
}

class _TabLichState extends State<TabLich> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
          backgroundColor: Colors.white,
          title: Text(
            "Lịch khám sắp tới",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          // bottom: PreferredSize(
          //   child: Container(
          //     color: Colors.white,
          //     child: TabBar(
          //       indicatorColor: Colors.black,
          //       indicatorWeight: 1,
          //       tabs: [
          //         Container(
          //           height: 45,
          //           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          //           decoration: BoxDecoration(
          //             //color: colorMain,
          //             //borderRadius: BorderRadius.circular(20),
          //           ),
          //           child: Center(
          //               child: Text(
          //                 "Hôm nay",
          //                 maxLines: 2,
          //                 textAlign: TextAlign.center,
          //                 overflow: TextOverflow.ellipsis,
          //                 style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 17,
          //                     fontWeight: FontWeight.bold),
          //               )),
          //         ),
          //         Container(
          //           height: 45,
          //           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          //           decoration: BoxDecoration(
          //             //color: Colors.white,
          //             // borderRadius: BorderRadius.circular(20),
          //             //border: Border.all(color: colorMain, width: 1)
          //           ),
          //           child: Center(
          //               child: Text(
          //                 "Trong tháng",
          //                 maxLines: 2,
          //                 textAlign: TextAlign.center,
          //                 overflow: TextOverflow.ellipsis,
          //                 style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 17,
          //                     fontWeight: FontWeight.bold),
          //               )),
          //         ),
          //       ],
          //     ),
          //   ),
          //   preferredSize: Size.fromHeight(50),
          // ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Container(
                  //           height: 70,
                  //           padding: EdgeInsets.symmetric(
                  //               horizontal: 15, vertical: 10),
                  //           decoration: BoxDecoration(
                  //             color: colorMain,
                  //             borderRadius: BorderRadius.circular(20),
                  //           ),
                  //           child: Center(
                  //               child: Text(
                  //             "Lịch khám hôm nay",
                  //             maxLines: 2,
                  //             textAlign: TextAlign.center,
                  //             overflow: TextOverflow.ellipsis,
                  //             style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.bold),
                  //           )),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 20,
                  //       ),
                  //       Expanded(
                  //         child: Container(
                  //           height: 70,
                  //           padding: EdgeInsets.symmetric(
                  //               horizontal: 15, vertical: 10),
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(20),
                  //               border: Border.all(color: colorMain, width: 1)),
                  //           child: Center(
                  //               child: Text(
                  //             "Lịch khám trong tháng",
                  //             maxLines: 2,
                  //             textAlign: TextAlign.center,
                  //             overflow: TextOverflow.ellipsis,
                  //             style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.bold),
                  //           )),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Divider(
                  //   thickness: 2,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Container(
                  //       padding:
                  //           EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  //       decoration: BoxDecoration(
                  //           color: colorMain,
                  //           borderRadius: BorderRadius.circular(15)),
                  //       child: Center(
                  //         child: Text(
                  //           "Bộ lọc",
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 16,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 15,
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         width: 20,
                  //         height: 20,
                  //         decoration: BoxDecoration(
                  //             color: colorMain, shape: BoxShape.circle),
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Expanded(
                  //         child: Text(
                  //           "Nhấn vào để xem thông tin cụ thể",
                  //           overflow: TextOverflow.ellipsis,
                  //           maxLines: 1,
                  //           textAlign: TextAlign.left,
                  //           style: TextStyle(
                  //               color: colorMain,
                  //               fontSize: 17,
                  //               decoration: TextDecoration.underline,
                  //               fontStyle: FontStyle.italic,
                  //               fontWeight: FontWeight.w700),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  ItemNotifi(true,
                      "Trần Văn Cừ (54 tuổi) chuyên khoa khám Tai - mũi - họng - 15h30","Sắp tới", colorMain),
                  ItemNotifi(false,
                      "Nguyễn Thị Giang (32 tuổi) Chuyên khoa khám Tai - mũi - họng 16h30","Sắp tới", colorMain),
                  ItemNotifi(false,
                      "Ngô Văn Nam (39 tuổi) chuyên khoa khám Tai - Mũi - Họng 18h15","Sắp tới", colorMain),
                  SizedBox(height: 20,),
                  Text(
                    "Tất cả lịch khám",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 10,),
                  ItemNotifi(false,
                      "Quang Văn Huy (42 tuổi) chuyên khoa khám Tai - mũi - họng 25/11 15h", "Chưa Nhận khám", Colors.red),
                  ItemNotifi(true,
                      "Hoàng Văn Tạ (42 tuổi) chuyên khoa khám Tai - mũi - họng 25/11 19h","Chưa Nhận khám", Colors.red),
                  SizedBox(height: 20,),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        color: Color(0xffEDEDED),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text("Xem tất cả", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black
                      ),),
                    ),
                  )
                ],
              ),
            ),
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

  Widget ItemNotifi(check, title,sub, color) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black, width: 0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          check
              ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    sub.toUpperCase(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 17,
                          color: color,
                          fontWeight: FontWeight.w700),
                    ),
                ],
              )
              : Container()
        ],
      ),
    );
  }
}
