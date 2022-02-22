import 'package:app_nano/color_main.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class KetNoiBacSi extends StatefulWidget {
String title;
String sub;
KetNoiBacSi({required this.title, required this.sub});
  @override
  _KetNoiBacSiState createState() => _KetNoiBacSiState();
}

class _KetNoiBacSiState extends State<KetNoiBacSi> {
  TextEditingController text = new TextEditingController();
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
        child: Column(
          children: [
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.sub,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: text,
                decoration: InputDecoration(
                  hintText: widget.sub,
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 55,),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenChat()));
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: colorMain,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Kết nối",
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
    );
  }
}
