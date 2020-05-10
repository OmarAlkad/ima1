import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<int> courses = [];

  ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        title: TextFormField(
          autofocus: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              iconSize: 25,
              onPressed: () {
              },
              icon: Icon(Icons.search),
            ),
            hintText: 'search . . .',
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusColor: Colors.grey
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
        onPressed: (){
          Navigator.of(context).pushNamed('/CourseDetailesPage');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              child: Image.asset('assets/images/python.png',
              fit: BoxFit.cover,),

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
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      'Learn to apply visualization principles to the data analysis process.',
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff635555)
                      ),
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
