import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Video.dart';

class VideoLivePage extends StatefulWidget {
  @override
  _VideoLivePageState createState() => _VideoLivePageState();
}

class _VideoLivePageState extends State<VideoLivePage> {
  Size size;
  List<int> messages = [1, 2, 1, 2, 1, 2];

  bool orientation;

  double chatHeight;

  @override
  void initState() {
    orientation = true;
    chatHeight = 15;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return orientation
        ? Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              title: Text(
                'Video',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
            ),
            body: Container(
//              height: size.height,
              child: ListView(
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    height: 200,
                    child: VideoApp(
                      setOrientation: () {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.landscapeRight,
                          DeviceOrientation.landscapeLeft,
                        ]);
                        setState(() {
                          orientation = false;
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 6,
                          color: const Color(0xff000000).withOpacity(0.25),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Data Modeling',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600)),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                          color: Color(0xffff3d3d),
                          child: Text(
                            'LIVE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: size.height - (50 + 4 + 55 + 200 + 80),
                    child: ListView.builder(
                      reverse: true,
                      itemBuilder: messageBuilder,
                      itemCount: messages.length,
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, -1),
                          blurRadius: 6,
                          color: const Color(0xff000000).withOpacity(0.25),
                        )
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          child: TextField(
                            showCursor: false,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                                focusColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: Colors.grey)),
                                hintText: 'Type here . . . ',
                                hintStyle: TextStyle(fontSize: 18)),
                          ),
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 42,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Icon(
                                Icons.send,
                                size: 33,
                                color: Color(0xff202D5A),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.black,
            extendBody: true,
            body: WillPopScope(
              onWillPop: () {
                setState(() {
                  orientation = true;
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.portraitUp,
                    DeviceOrientation.portraitDown,
                  ]);
                });
              },
              child: Center(
                child: Stack(
                  children: <Widget>[
                    VideoApp(
                      setOrientation: () {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitDown,
                          DeviceOrientation.portraitUp,
                        ]);
                        setState(() {
                          orientation = true;
                        });
                      },
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: DraggableScrollableSheet(
                        initialChildSize: 0.05,
                        maxChildSize: 0.8,
                        minChildSize: 0.05,
                        builder: (context, controller) {
                          return Container(
                            height: size.height * 0.8,
                            decoration: (BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              color: Colors.white.withOpacity(0.3),
                            )),
                            child: ListView.builder(
                              controller: controller,
//                        reverse: true,
                              itemBuilder: messageBuilder,
                              itemCount: messages.length,
                            ),
                          );
                        },
//                  minChildSize: 15,
//                  maxChildSize: size.height - 125,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }

  Widget myMessageBuilder(int index) {
    return Container(
      width: size.width,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/belgets.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xff7f9FF9),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Omar Alkadi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  child: Text(
                    'I highly recommend it.',
                    maxLines: 4,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }

  Widget hisMessageBuilder(int index) {
    return Container(
      width: size.width,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xffA8DCB4),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Omar Alkadi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  child: Text(
                    'I highly recommend it.',
                    maxLines: 4,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/belgets.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget messageBuilder(BuildContext context, int index) {
    if (messages[index] == 1) return myMessageBuilder(0);
    return hisMessageBuilder(0);
  }
}
