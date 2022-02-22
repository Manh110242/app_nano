import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController chat = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.white,
        title: Text(
          "Nguyễn Đức Giang",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [chatLeft(), chatRight()],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.image,
                color: Colors.black,
              ),
              onPressed: () async {},
            ),
            Expanded(
              child: Container(
                height: 40,
                //width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: chat,
                  onSubmitted: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Tin nhắn ... ',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(11),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        width: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
              onPressed: () async {},
            )
          ],
        ),
      ),
    );
  }

  Widget chatRight() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 100, right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(20))),
                      child: Text(
                        "Chào anh!",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "12:40",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(width: 8,),
              Icon(CupertinoIcons.person_alt, size: 40,)
            ],
          ),

        ],
      ),
    );
  }

  Widget chatLeft() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 100, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Icon(
                      CupertinoIcons.person_alt_circle,
                      size: 40,
                    )),
              ),
              Flexible(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(5))),
                        child: Text(
                          "Chào bác sĩ!",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "12:32",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
