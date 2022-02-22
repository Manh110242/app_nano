import 'package:flutter/material.dart';

import '../color_main.dart';

class CreateHSBenh extends StatefulWidget {
  @override
  _CreateHSBenhState createState() => _CreateHSBenhState();
}

class _CreateHSBenhState extends State<CreateHSBenh> {
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController birthday = new TextEditingController();
  TextEditingController sex = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
         centerTitle: true,
        backgroundColor: colorMain,
        title: Text('Tạo hồ sơ bệnh nhân'),
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
              //       "Tạo hồ sơ bệnh nhân",
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 17,
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              ItemInput(
                  hint: "Nhập họ tên", title: "Họ và tên", controller: name),
              ItemInput(
                  hint: "Nhập giới tính", title: "Giới tính", controller: sex),
              ItemInput(
                  hint: "Nhập ngày sinh",
                  title: "Ngày sinh",
                  controller: birthday),
              ItemInput(
                  hint: "Nhập địa chỉ",
                  title: "Địa chỉ",
                  controller: phone),
              ItemInput(
                  hint: "Nhập số điện thoại",
                  title: "Số điện thoại",
                  controller: phone),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    color: colorMain,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Hoàn tất",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
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
}
