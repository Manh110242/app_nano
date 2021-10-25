import 'package:app_nano/model/model_table.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class MauPhieuKham extends StatefulWidget {
  @override
  _MauPhieuKhamState createState() => _MauPhieuKhamState();
}

class _MauPhieuKhamState extends State<MauPhieuKham> {

  List data = [
    ModelTable(title: "Bệnh nhân", content: "Nguyễn Văn A"),
    ModelTable(title: "Ngày sinh", content: "09/10/1999"),
    ModelTable(title: "Giới tính", content: "Nam"),
    ModelTable(
        title: "Địa chỉ",
        content: "Số 6, Tôn Đức Thắng, Liên Bảo, Vĩnh Yên, Vĩnh Phúc"),
    ModelTable(title: "Điện thoại", content: "0963***167"),
    ModelTable(title: "Mã phiếu", content: "91545"),
    ModelTable(title: "Số thứ tự", content: "9"),
    ModelTable(title: "Chuyên khoa", content: "Tai mũi họng"),
    ModelTable(title: "Giờ khám", content: "8:30 AM - 9:00 PM"),
    ModelTable(title: "Ngày khám", content: "30/09/2021"),
    ModelTable(title: "Bác sĩ", content: "Nguyễn Minh B"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text(
          "Phiếu khám bệnh",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: colorMain.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Đã khám thành công",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Phiếu khám bệnh",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: colorMain),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Table(
                    border: TableBorder.symmetric(
                      inside: BorderSide(width: 1, color: colorMain),
                    ),
                    columnWidths: {
                      0: FlexColumnWidth(3),
                      1: FlexColumnWidth(6),
                    },
                    children: List.generate(
                      data.length,
                      (index) => TableRow(children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Text(
                              data[index].title,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Text(
                              data[index].content,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
