import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorPage extends StatefulWidget {
  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  Size size;

  bool describtion;

  List<int> feedbacks = [1, 1];
  List<int> courses = [1, 1, 1, 1];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    describtion = false;
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
              height: 361,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 313,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Color(0xff5C6EAC),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    height: 361,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
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
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 100,
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
                              height: 10,
                            ),
                            Text(
                              'Dr. Omar Alkadi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Doctor of software engineering',
                              style: TextStyle(
                                  color: Color(0xffEFE6E6),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              height: 100,
                              width: size.width,
                              child: RaisedButton(
                                onPressed: () {},
                                elevation: 3,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 18),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Delegates',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '2000',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blue[900],
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 18),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Courses',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '3',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blue[900],
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 18),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Rating',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '4/5',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blue[900],
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
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
              height: 30,
            ),
            Center(
              child: Container(
                height: 50,
                width: 130,
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff202D5A), width: 3)),
                  child: Text(
                    'FOLLOW',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Contact Info',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            FlatButton(
              padding: EdgeInsets.only(left: 30, top: 8, bottom: 8),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SvgPicture.asset(
                      'assets/svgImages/email.svg',
                      width: 22,
                      height: 22,
                      color: Colors.black
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('email@email.com', style: TextStyle(fontSize: 17,
                  color: Colors.grey[800]))
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.only(left: 30, top: 8, bottom: 8),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SvgPicture.asset(
                      'assets/svgImages/telephone.svg',
                      width: 22,
                      height: 22,
                      color: Colors.black
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('123 456 789 22', style: TextStyle(fontSize: 17,
                      color: Colors.grey[800]))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Courses by Dr. Omar alkadi',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 203,
              child: ListView.builder(
                padding: EdgeInsets.all(5),
                itemBuilder: courseBuilder,
                itemCount: courses.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }

  Widget courseBuilder(BuildContext context, int index) {
    return Container(
      width: 225,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/CourseDetailesPage');
        },
        color: Colors.white,
        elevation: 2,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(13),
                    topLeft: Radius.circular(13)),
                child: Image.asset(
                  'assets/images/python.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Python',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: starsBuilder(4),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
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
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '100 EGP',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
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
