import 'package:app_nano/screen/Screen_bacsi.dart';
import 'package:app_nano/screen/screen_benh_nhan.dart';
import 'package:app_nano/screen/screen_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Bạn là...",
            style: TextStyle(
                color: colorMain, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenHomePage()));
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              decoration: BoxDecoration(
                color: colorMain,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Bác sĩ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
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
              height:50,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              decoration: BoxDecoration(
                color: colorMain,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Bênh nhân",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              )),
            ),
          ),
        ],
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
