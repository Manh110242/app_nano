import 'package:app_nano/screen/Screen_bacsi.dart';
import 'package:app_nano/screen/nguoi_than.dart';
import 'package:app_nano/screen/screen_benh_nhan.dart';
import 'package:app_nano/screen/screen_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  bool check;
  HomePage({required this.check});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bạn là ?",
              style: TextStyle(
                  color: Colors.black, fontSize: 40, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15,),
            Divider(thickness: 1,),
            InkWell(
              onTap: (){
                if(widget.check){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenHomePage()));
                }else{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenBacSi()));
                }
              },
              child: Container(
                height: 120,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(23,122,189,1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                      "Bác sĩ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenBenhNhan()));
              },
              child: Container(
                height:120,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(23,122,189,1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                      "bệnh nhân",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NguoiThan()));
              },
              child: Container(
                height:120,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(23,122,189,1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                      "Người thân bệnh nhân",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Widget itemInput(
//     String hint, IconData icon, TextEditingController controller) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 30),
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: TextFormField(
//         controller: controller,
//         cursorColor: Colors.white,
//         style: TextStyle(
//           color: Colors.grey.shade200,
//           fontSize: 15,
//         ),
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             icon,
//             color: Colors.white,
//           ),
//           hintText: hint,
//           hintStyle: TextStyle(
//             color: Colors.grey.shade200,
//             fontSize: 15,
//           ),
//           border: InputBorder.none,
//           fillColor: Color(0xff3333FF),
//           filled: true,
//           contentPadding: EdgeInsets.only(left: 15, right: 15, top: 15),
//         ),
//       ),
//     ),
//   );
// }
}
