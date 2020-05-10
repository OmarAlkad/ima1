import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MyCourseContentPage extends StatefulWidget {
  @override
  _MyCourseContentPageState createState() => _MyCourseContentPageState();
}

class _MyCourseContentPageState extends State<MyCourseContentPage> {
  Size size;

  List<int> parts = [1, 1, 1, 1, 1];
  List<List<int>> partsContents = [
    [1, 1, 1],
    [1, 1, 1],
    [1, 1, 1],
    [1, 1, 1],
    [1, 1, 1]
  ];
  List<bool> isPartOpen = [];

  bool _fabVisible = true;

  ScrollController _scrollController;

  @override
  void initState() {
    for (int i = 0; i < parts.length; i++) isPartOpen.add(false);

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.position.userScrollDirection ==
              ScrollDirection.forward)
            _fabVisible = true;
          else
            _fabVisible = false;
        });
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Course Name',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: parts.length,
        itemBuilder: partBuilder,
        controller: _scrollController,
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Color(0xff202D5A),
        onPress: () {
          Navigator.of(context).pushNamed('/VideoPage');
        },
        curve: Curves.bounceIn,
        visible: _fabVisible,
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  Widget partBuilder(BuildContext context, int index) {
    double _height = null;
    if (isPartOpen[index])
      _height = 0;
    else
      _height = (partsContents[index].length) * 60.0;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      color: Color(0xffEFEFEF),
      height: _height + 71,
      child: Column(
        children: <Widget>[
          Container(
            width: size.width,
            height: 70,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                setState(() {
                  if (isPartOpen[index]) {
                    isPartOpen[index] = false;
                    _height = 0;
                  } else {
                    isPartOpen[index] = true;
                    _height = (partsContents[index].length) * 60.0;
                  }
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Part 1',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  isPartOpen[index]
                      ? Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.black,
                          size: 30,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 30,
                        )
                ],
              ),
            ),
          ),
          partContentBuilder(index),
        ],
      ),
    );
  }

  partContentBuilder(int index) {
    var partContent = partsContents[index];

    List<Widget> widgets = [];

    for (int i = 0; i < partContent.length; i++)
      widgets.add(Container(
        height: 60,
        child: FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/VideoPage').then((_) {
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.portraitUp,
                DeviceOrientation.portraitDown,
              ]);
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Icon(Icons.ondemand_video),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                'Video 1',
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.file_download,
                ),
                color: Color(0xff202D5A),
              )
            ],
          ),
        ),
      ));

    return Container(
      height: (partsContents[index].length) * 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: widgets,
      ),
    );
  }
}
