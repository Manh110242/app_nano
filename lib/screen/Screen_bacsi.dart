import 'package:app_nano/screen/screen_tiep.dart';
import 'package:flutter/material.dart';

class ScreenBacSi extends StatefulWidget {
  @override
  _ScreenBacSiState createState() => _ScreenBacSiState();
}

class _ScreenBacSiState extends State<ScreenBacSi> {
  Color col = Color(0xff008B8B);
  TextEditingController phone = new TextEditingController();
  TextEditingController namepk = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController giayphep = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController cmt = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                color: col,
                width: double.infinity,
                child: Text(
                  "Đăng ký hồ sơ phòng khám",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ),
              Container(
                width: 110,
                height: 110,
                margin: EdgeInsets.only(top: 20, bottom: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: col.withOpacity(0.5)),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 70,
                  ),
                ),
              ),
              Text(
                "Cập nhật ảnh đại diện",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              SizedBox(
                height: 25,
              ),
              ItemInput(
                controller: phone,
                title: "Số điện thoại:",
                hint: "Nhập số điện thoại"
              ),
              ItemInput(
                  controller: namepk,
                  title: "Tên phòng khám:",
                  hint: "Nhập tên phòng khám"
              ),
              ItemInput(
                  controller: address,
                  title: "Địa chỉ:",
                  hint: "Nhập địa chỉ"
              ),
              ItemInput(
                  controller: giayphep,
                  title: "Giấy phép hành nghề:",
                  hint: "Nhập giấy phép"
              ),
              ItemInput(
                  controller: name,
                  title: "Tên người sở hữu:",
                  hint: "Nhập tên người sở hữu"
              ),
              ItemInput(
                  controller: cmt,
                  title: "Số CMND/CCCD:",
                  hint: "Nhập CMND/CCCD"
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTiep()));
                },
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: col,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text(
                      "Tiếp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15)),
            ),
          ),
        ],
      ),
    );
  }
}