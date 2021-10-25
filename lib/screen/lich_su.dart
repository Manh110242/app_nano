import 'package:app_nano/color_main.dart';
import 'package:app_nano/model/lich_su_model.dart';
import 'package:app_nano/screen/show_image.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'create_lich_su.dart';

class LichSuUongThuoc extends StatefulWidget {
  @override
  _LichSuUongThuocState createState() => _LichSuUongThuocState();
}

class _LichSuUongThuocState extends State<LichSuUongThuoc> {
  List<itemModelLichsu> lan = [
    itemModelLichsu(images: [
      "https://ungthutap.com/img/uploads/paracetamol-500mg.jpg",
      "https://hapacol.vn/wp-content/uploads/2019/10/hapacol-cam-cum.png",
      "https://benh.vn/wp-content/uploads/2019/04/prospan-360x360.jpg"
    ], title: "Lần 1", gio: "8h30"),
    itemModelLichsu(images: [
      "https://ungthutap.com/img/uploads/paracetamol-500mg.jpg",
      "https://hapacol.vn/wp-content/uploads/2019/10/hapacol-cam-cum.png",
      "https://benh.vn/wp-content/uploads/2019/04/prospan-360x360.jpg"
    ], title: "Lần 2", gio: "11h30"),
    itemModelLichsu(images: [
      "https://ungthutap.com/img/uploads/paracetamol-500mg.jpg",
      "https://hapacol.vn/wp-content/uploads/2019/10/hapacol-cam-cum.png",
      "https://benh.vn/wp-content/uploads/2019/04/prospan-360x360.jpg"
    ], title: "Lần 3", gio: "19h30"),
  ];

  List ngay = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ngay.add(ModelLichSu(lan: lan, ngay: "26/02/2021"));
    ngay.add(ModelLichSu(lan: lan, ngay: "25/02/2021"));
    ngay.add(ModelLichSu(lan: lan, ngay: "24/02/2021"));
    ngay.add(ModelLichSu(lan: lan, ngay: "23/02/2021"));
    ngay.add(ModelLichSu(lan: lan, ngay: "22/02/2021"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Lịch sữ uống thuốc",
          style: TextStyle(color: Colors.black,),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateLichSu()));
            },
            child: Text(
              "Thêm mới",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: ngay.length,
          itemBuilder: (_, index) => itemLichSU(ngay[index]),
        ),
      ),
    );
  }

  Widget itemLichSU(data) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ngày: ${data.ngay}",
            style: TextStyle(
                color: colorMain, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              data.lan.length,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.lan[index].title,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Giờ: ${data.lan[index].gio}",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Thuốc đã uống:",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    childAspectRatio: 1,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(
                      data.lan[index].images.length,
                      (index) => InkWell(
                        onTap: (){
                          showMaterialModalBottomSheet(
                            context: context,
                            builder: (context) => ShowImage(
                              list:  data.lan[index].images,
                              selete: index, Image: '',
                            ),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: Image.network(
                            data.lan[index].images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
