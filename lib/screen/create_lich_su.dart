import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../color_main.dart';

class CreateLichSu extends StatefulWidget {
  @override
  _CreateLichSuState createState() => _CreateLichSuState();
}

class _CreateLichSuState extends State<CreateLichSu> {
  late XFile img;
  List<XFile> listImage = [];
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Thêm lịch sử uống thuốc hôm nay",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_a_photo_outlined,
              color: Colors.black,
            ),
            onPressed: () async {
              img = (await _picker.pickImage(source: ImageSource.camera))!;
              if (img != null) listImage.add(img);
              setState(() {});
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colorMain, width: 1),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 10, right: 10, top: 10),
                      ),
                      dropdownColor: colorMain,
                      isExpanded: true,
                      alignment: Alignment.center,
                      onChanged: (value) {},
                      hint: Container(
                        child: Center(
                            child: Text(
                          "-Chọn-",
                          textAlign: TextAlign.center,
                        )),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Lần 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          value: "Lần 1",
                          alignment: Alignment.center,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Lần 2",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          value: "Lần 2",
                          alignment: Alignment.center,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Lần 3",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          value: "Lần 3",
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: colorMain, width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Lưu",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Ảnh chụp số thuốc đã sử dụng trong lần này",
                maxLines: 2,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: colorMain,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: colorMain, width: 1),
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    listImage.length,
                    (index) => Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAlias,
                      child: Image.file(
                        File(listImage[index].path),
                        fit: BoxFit.cover,
                      ),
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
