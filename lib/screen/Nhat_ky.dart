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
          "Th???i gian: 8h00",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "S??? l?????ng: 01 vi??n",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "Lo???i thu???c: Kh??ng sinh",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "T??c d???ng: Ti??u di???t m???t s??? lo???i vi khu???n g??y b???nh",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "L??u ??: Sau ??n s??ng",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Row(
          children: [
            Text(
              "T??nh tr???ng:",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              " ???? U???ng".toUpperCase(),
              style: TextStyle(
                  fontSize: 16, color: Colors.red, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Text(
          "Th??m th??ng tin v??? thu???c",
          style: TextStyle(
              fontSize: 16,
              color: colorMain,
              decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
