import 'package:app_nano/color_main.dart';
import 'package:flutter/material.dart';

import 'Nhat_ky.dart';

class TheoGioiLoTrinh extends StatefulWidget {
  @override
  _TheoGioiLoTrinhState createState() => _TheoGioiLoTrinhState();
}

class _TheoGioiLoTrinhState extends State<TheoGioiLoTrinh> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          "Theo dõi lộ trình chữa trị",
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
              Text(
                "Bệnh nhân: Nguyễn Văn Giang",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Ngày sinh: 18/06/1976",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Địa chỉ: Liên Bảo, Vĩnh Yên, Vĩnh Phúc",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Quá trình chữa trị:",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 16,
                      color: Color(0xffCCCCCC),
                      child: Row(
                        children: [
                          Container(
                            height: 16,
                            width: size.width * 0.32,
                            color: colorMain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "30%",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Kết luận bệnh:",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Viêm họng nhẹ, dị ứng thời tiết",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Nhật ký dùng thuốc:",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NhatKy(title: "Nhật ký dùng thốc ngày 1",)));
                },
                child: Container(
                  width: size.width,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(216, 237, 243, 1),
                      borderRadius: BorderRadius.circular(22)),
                  child: Center(
                    child: Text(
                      "Ngày 1",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NhatKy(title: "Nhật ký dùng thốc ngày 2",)));
                },
                child: Container(
                  width: size.width,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(226, 226, 226, 1),
                      borderRadius: BorderRadius.circular(22)),
                  child: Center(
                    child: Text(
                      "Ngày 2",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NhatKy(title: "Nhật ký dùng thốc ngày 3",)));
                },
                child: Container(
                  width: size.width,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(216, 237, 243, 1),
                      borderRadius: BorderRadius.circular(22)),
                  child: Center(
                    child: Text(
                      "Ngày 3",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
