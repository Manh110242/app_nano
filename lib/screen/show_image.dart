
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatefulWidget {
  List list = [];
  int selete = 0;
  String Image;

  ShowImage({required this.list, required this.selete, required this.Image});

  @override
  _ShowImageState createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  String url =
      "https://image-us.eva.vn/upload/1-2020/images/2020-03-27/mam-com-nha-sao-viet-mua-dich-tt-1585276702-557-width2048height1536.jpg";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        title: widget.Image != null && widget.list.length == 0
            ? Text("")
            : Text("${widget.selete + 1}/${widget.list.length}"),
      ),
      body: widget.Image != null && widget.list.length == 0
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: CircularProgressIndicator(),
              ),
            )
          : Center(
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              initialPage: widget.selete,
              onPageChanged: (value, car) {
                widget.selete = value;
                setState(() {});
              }),
          items: List.generate(
            widget.list.length,
                (index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.network( widget.list[index],fit: BoxFit.contain,),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
