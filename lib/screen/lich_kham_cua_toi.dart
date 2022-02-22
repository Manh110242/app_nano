import 'package:app_nano/color_main.dart';
import 'package:app_nano/screen/screen_sang_loc_benh.dart';
import 'package:app_nano/screen/tab/tab_account.dart';
import 'package:flutter/material.dart';

import 'dat_lich.dart';
import 'ket_noi_bs.dart';

class LichKhamCuaToi extends StatefulWidget {
  @override
  _LichKhamCuaToiState createState() => _LichKhamCuaToiState();
}

class _LichKhamCuaToiState extends State<LichKhamCuaToi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          "Lịch khám của tôi",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lịch khám hiện tại".toUpperCase(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Bệnh nhân: BN123774",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "STT: 121",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Text(
                "Thời gian: 8h00, 23/1/2021",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Text(
                "Địa điểm: Phòng 201, Tầng 2, Nhà B, Khoa Tai - Mũi - Họng, Bệnh viện Đa khoa tỉnh Vĩnh Phúc",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Text(
                "Bác sĩ phụ trách: Vũ Nam Khánh",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Text(
                "ID bác sĩ: BS123654",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Bạn sẽ được nhắc lại lịch khám trước 01 ngày!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TabAccount(check: false,)));
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: colorMain,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Xem hồ sơ bác sĩ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => KetNoiBacSi(title: "Kết nối bác sĩ",sub: "Nhập ID bác sĩ",)));
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Kết nối đến bác sĩ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Hủy lịch",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenSanglocBenh()));
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Đặt lịch khám",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
