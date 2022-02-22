import 'package:app_nano/screen/theo_gioi_lo_tring.dart';
import 'package:flutter/material.dart';

class HoSoBenhNhan extends StatefulWidget {
  @override
  _HoSoBenhNhanState createState() => _HoSoBenhNhanState();
}

class _HoSoBenhNhanState extends State<HoSoBenhNhan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          "Hồ sơ bệnh nhân",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemHoSo("Nguyễn Văn Giang","18/06/1976"," Liên Bảo, Vĩnh Yên, Vĩnh Phúc", false),
            ItemHoSo("Trần Đức Hoàng","28/04/1998"," Liên Bảo, Vĩnh Yên, Vĩnh Phúc", true),
            ItemHoSo("Trần Thanh Danh","27/06/1989"," Liên Bảo, Vĩnh Yên, Vĩnh Phúc", true),
            SizedBox(height: 20,),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 10),
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
    );
  }

  Widget ItemHoSo(name, birthday, address, check) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>TheoGioiLoTrinh()));
      },
      child: Container(
        color: check ? Colors.white : Color(0xffEDEDED),
        padding: EdgeInsets.all(10),
        width: size.width,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Họ tên:",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                  name,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ))
              ],
            ),
            SizedBox(width: 5,),
            Row(
              children: [
                Text(
                  "Ngày sinh:",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                      birthday,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
            SizedBox(width: 5,),
            Row(
              children: [
                Text(
                  "Địa chỉ:",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                      address,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
