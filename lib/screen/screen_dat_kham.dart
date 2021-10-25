import 'package:app_nano/model/model_table.dart';
import 'package:app_nano/screen/screen_benh_nhan.dart';
import 'package:app_nano/screen/screen_home_page.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class ScreenDatKham extends StatefulWidget {
  bool check;
  ScreenDatKham({required this.check});
  @override
  _ScreenDatKhamState createState() => _ScreenDatKhamState();
}

class _ScreenDatKhamState extends State<ScreenDatKham> {
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
    ModelTable(title: "Triệu chứng", content: "Đau đầu, sổ mũi"),
    ModelTable(title: "Thuốc sử dụng", content: "Aspirin"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: colorMain,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Đặt khám",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Hồ sơ của bạn",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
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
                ),
                widget.check ? SizedBox(
                  height: 15,
                ) : Container(),
                widget.check ? Row(
                  children: [
                    Text(
                      "Đặt lịch khám:",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: colorMain, width: 1),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                          ),
                          dropdownColor: colorMain,
                          isExpanded: true,
                          alignment: Alignment.center,
                          onChanged: (val) {
                            print(val);
                          },
                          hint: Container(
                            child: Center(
                                child: Text(
                              "-Chọn lịch khám-",
                              textAlign: TextAlign.center,
                            )),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text("8h30 - 11h30 AM", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),),
                              value: "8h30 - 11h30 AM",
                              alignment: Alignment.center,
                            ),
                            DropdownMenuItem(
                              child: Text("2H30 - 5h PM", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),),
                              value: "2H30 - 5h PM",
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ) : Container(),
                SizedBox(
                  height: 25,
                ),
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
                        color: colorMain.withOpacity(0.6)),
                    child: Text(
                      "Hoàn tất",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
