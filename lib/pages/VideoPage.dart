import 'package:flutter/material.dart';
import '../Video.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  Size size;

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
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
        height: size.height,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.black,
                  height: 200,
                  child: VideoApp(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 2),
                        blurRadius: 6,
                        color: const Color(0xff000000).withOpacity(0.25),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Data Modeling',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        )
                      ),
                      Expanded(child: Container(),),
                      RaisedButton(
                        onPressed: (){

                        },
                        color: Color(0xff202D5A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ddddd ddddd ddddddd ddddddd ddddddd ',
                  style: TextStyle(
                    fontSize: 16
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
