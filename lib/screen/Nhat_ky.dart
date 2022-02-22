import 'package:app_nano/color_main.dart';
import 'package:flutter/material.dart';

class NhatKy extends StatefulWidget {
  String title;
  NhatKy({required this.title});
  @override
  _NhatKyState createState() => _NhatKyState();
}

class _NhatKyState extends State<NhatKy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
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
                "Amoxicillin",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: colorMain),
              ),
              ItemList(),
              SizedBox(
                height: 15,
              ),
              Text(
                "Clorpheniramin",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: colorMain),
              ),
              ItemList(),
              SizedBox(
                height: 15,
              ),
              Text(
                "Alpha choay",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: colorMain),
              ),
              ItemList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "Thời gian: 8h00",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "Số lượng: 01 viên",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "Loại thuốc: Kháng sinh",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "Tác dụng: Tiêu diệt một số loại vi khuẩn gây bệnh",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "Lưu ý: Sau ăn sáng",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Row(
          children: [
            Text(
              "Tình trạng:",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              " Đã Uống".toUpperCase(),
              style: TextStyle(
                  fontSize: 16, color: Colors.red, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Text(
          "Thêm thông tin về thuốc",
          style: TextStyle(
              fontSize: 16,
              color: colorMain,
              decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
