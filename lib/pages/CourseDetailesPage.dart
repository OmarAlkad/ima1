import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CourseDetailesPage extends StatefulWidget {
  @override
  _CourseDetailesPageState createState() => _CourseDetailesPageState();
}

class _CourseDetailesPageState extends State<CourseDetailesPage> {
  Size size;

  bool describtion;
  bool content;
  bool whateLearn;

  List<int> feedbacks = [1, 1];
  List<int> parts = [1, 3, 2];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    describtion = false;
    content = true;
    whateLearn = false;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Color(0xffF5F5F5),
        child: ListView(
          children: <Widget>[
            Container(
              height: 335,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 275,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Color(0xff5C6EAC),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    height: 335,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 50,
                              child: FlatButton(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: SvgPicture.asset(
                                      'assets/svgImages/share.svg',
                                      width: 30,
                                      height: 30,
                                      color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: SvgPicture.asset(
                                      'assets/svgImages/love.svg',
                                      width: 30,
                                      height: 30,
                                      color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Python Course',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  height: 27,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color(0xffffffff),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                        '5 stars',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 17,
                                          color: Color(0xffffffff),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  height: 27,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color(0xffffffff),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                        '100 Enrolled',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 17,
                                          color: Color(0xffffffff),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  height: 27,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color(0xffffffff),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                        '35 minute',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 17,
                                          color: Color(0xffffffff),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              height: 125,
                              width: size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.all(8),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('/DoctorPage');
                                },
                                elevation: 3,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                child: Stack(
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          child: Center(
                                            child: FlatButton(
                                              child: Icon(
                                                Icons.more_horiz,
                                                color: Colors.black,
                                              ),
                                              onPressed: () {},
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      50)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          height: 65,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(50),
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
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Dr. Omar Alkadi',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Container(
                                                width: size.width - (65 + 8 + 8 + 8 + 25 + 25 + 18),
                                                child: Text(
                                                  'Doctor of software engineering',
                                                  style: TextStyle(
                                                      color: Colors.grey[600],
                                                      fontSize: 13,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    describtion = !describtion;
                  });
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Describtion',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          describtion
                              ? Icon(
                            Icons.keyboard_arrow_up,
                          )
                              : Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                      describtion
                          ? SizedBox(
                        height: 8,
                      )
                          : Container(),
                      describtion
                          ? Text(
                          'ddd ddd ddd ddd ddd dddd dddd dddd dddd dddd dddd ddd dddd dddd dddd dddd dddd dddd dddd ddd ddd ddd dddd ddd ddd dddd d ddd ddd ddd ddd dddd ddd')
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    whateLearn = !whateLearn;
                  });
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Whate will I Learn?',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          whateLearn
                              ? Icon(
                            Icons.keyboard_arrow_up,
                          )
                              : Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                      whateLearn
                          ? SizedBox(
                        height: 8,
                      )
                          : Container(),
                      whateLearn
                          ? Text(
                          'ddd ddd ddd ddd ddd dddd dddd dddd dddd dddd dddd ddd dddd dddd dddd dddd dddd dddd dddd ddd ddd ddd dddd ddd ddd dddd d ddd ddd ddd ddd dddd ddd')
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    content = !content;
                  });
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Course Content',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          content
                              ? Icon(
                            Icons.keyboard_arrow_up,
                          )
                              : Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                      content
                          ? SizedBox(
                        height: 4,
                      )
                          : Container(),
                      content
                          ? Container(
                          child: Column(
                            children: courseContentBuilder(),
                          ))
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Center(
              child: Text('250 EGP',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xff202D5A), width: 3),
                  ),
                  onPressed: () {},
                  color: Colors.white,
                  elevation: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '50 EGP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '100 EGP',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[600],
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          '1 Year access',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff344FAC),
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey[500], width: 3),
                  ),
                  onPressed: () {},
                  color: Colors.white,
                  elevation: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '50 EGP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '100 EGP',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[600],
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Lifetime access',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff344FAC),
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: RaisedButton(
                onPressed: () {},
                color: Color(0xff202D5A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 60,
                  child: Center(
                    child: Text('add to cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: RaisedButton(
                onPressed: () {},
                color: Color(0xff202D5A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 60,
                  child: Center(
                    child: Text('add to wishlist',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'Delegates Feedback',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'see all',
                    style: TextStyle(color: Color(0xff202D5A)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: feedbacksWidgets(2),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> feedbacksWidgets(int n) {
    List<Widget> widgets = [];

    for (int i = 0; i < n; i++) {
      widgets.add(Container(
        width: size.width,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
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
            Column(
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
                  width: size.width - 100,
                  child: Text(
                    'I highly recommend it , can have a quick look in many  disease and conditions, also has audios and many more. Nice app for medical students.',
                    maxLines: 4,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
      ));
    }
    return widgets;
  }

  List<Widget> courseContentBuilder() {
    List<Widget> widgets = [];

    for (int i = 0; i < parts.length; i++) {
      int j = i + 1;
      widgets.add(Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 13,
          ),
          Text(
            '$j. Introdaction',
            style: TextStyle(color: Color(0xff463E3E), fontSize: 17),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'video(2) , resource(0)',
              style: TextStyle(color: Color(0xff463E3E)),
            ),
          )
        ],
      ));
    }

    return widgets;
  }

  List<Widget> starsBuilder(int n) {
    List<Widget> stars = [];
    for (int i = 0; i < 5; i++) {
      if (i + 1 < n)
        stars.add(Icon(
          Icons.star,
          size: 20,
          color: Colors.amber,
        ));
      else
        stars.add(Icon(
          Icons.star,
          size: 20,
          color: Colors.black54,
        ));
    }
    return stars;
  }
}
