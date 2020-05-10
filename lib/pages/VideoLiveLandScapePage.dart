import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Video.dart';

class VideoLiveLandScapePage extends StatefulWidget {
  @override
  _VideoLiveLandScapePageState createState() => _VideoLiveLandScapePageState();
}

class _VideoLiveLandScapePageState extends State<VideoLiveLandScapePage> {
  @override

  Size size;

  List<int> messages = [1, 2, 1, 2, 1, 2];

  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody:true,
      body: Center(
        child: Stack(
          children: <Widget>[
            VideoApp(),
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
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
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
              color: Color(0xff7391F9),
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
