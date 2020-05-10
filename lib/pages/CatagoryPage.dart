import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CatagoryPage extends StatefulWidget {
  @override
  _CatagoryPageState createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  List<int> courses = [1, 1, 1, 1];

  bool _fabVisible = true;

  ScrollController _scrollController;

  @override
  void initState() {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/SearchPage");
            },
            icon: Icon(Icons.search),
          )
        ],
        title: Text(
          'Catagory',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: courseBuilder,
          controller: _scrollController,
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Color(0xff202D5A),
        onPress: () {
          Navigator.of(context).pushNamed('/CartPage');
        },
        curve: Curves.bounceIn,
        visible: _fabVisible,
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget courseBuilder(BuildContext context, int index) {
    return Container(
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: RaisedButton(
        elevation: 3,
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 4),
        onPressed: () {
          Navigator.of(context).pushNamed('/CourseDetailesPage');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              child: Image.asset(
                'assets/images/python.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 145,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Python',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      'Learn to apply visualization principles to the data analysis process.',
                      maxLines: 3,
                      style: TextStyle(fontSize: 17, color: Color(0xff635555)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '50 EGP',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff344FAC),
                              fontSize: 16),
                        ),
                        Text(
                          '100 EGP',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: starsBuilder(4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> starsBuilder(int n) {
    List<Widget> stars = [];
    for (int i = 0; i < 5; i++) {
      if (i + 1 < n)
        stars.add(Icon(
          Icons.star,
          color: Colors.amber,
        ));
      else
        stars.add(Icon(
          Icons.star,
          color: Colors.black54,
        ));
    }
    return stars;
  }
}
