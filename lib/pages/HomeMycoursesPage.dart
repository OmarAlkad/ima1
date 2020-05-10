import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeMycoursesPage extends StatefulWidget {
  @override
  _HomeMycoursesPageState createState() => _HomeMycoursesPageState();
}

class _HomeMycoursesPageState extends State<HomeMycoursesPage>
    with SingleTickerProviderStateMixin {
  Size size = null;

  List<int> mycourses = [1, 1];
  List<int> catagories = [1, 1, 1];
  List<int> pabularCourses = [1, 1, 1, 1];
  List<int> newCourses = [1, 1, 1, 1];

  bool _fabVisible;

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    _fabVisible = true;
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        setState(() {
          if (_tabController.previousIndex == 1)
            _fabVisible = true;
          else
            _fabVisible = false;
        });
      });

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    FlutterStatusbarcolor.setStatusBarColor(Color(0xff202D5A));

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.black),
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/SearchPage');
            },
            icon: Icon(Icons.search),
          )
        ],
        centerTitle: true,
        toolbarOpacity: 1,
        backgroundColor: Colors.white,
        title: Text(
          'IMA',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      biuld_home(),
                      build_mycourses(),
                    ],
                    controller: _tabController,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                  color: const Color(0xff000000).withOpacity(0.25),
                )
              ],
            ),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Color(0xff202D5A),
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.0),
                  insets: EdgeInsets.symmetric(horizontal: 18.0)),
              tabs: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'My Courses',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
              onTap: (i) {
                if (i == 0)
                  setState(() {
                    _fabVisible = true;
                  });
                else
                  setState(() {
                    _fabVisible = false;
                  });
              },
            ),
          ),
        ],
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff202D5A),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 89,
                      width: 89,
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
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/SigninSignupPage');
                      },
                      child: Text('signup or signin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  biuld_home() {
    return Container(
      color: Colors.white,
      child: ListView(
        controller: _scrollController,
        padding: EdgeInsets.only(bottom: 8),
        children: <Widget>[
          CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 1.0,
              height: 175,
            ),
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
                width: size.width,
                child: Image.asset(
                  'assets/images/python.png',
                  fit: BoxFit.cover,
                  width: 300,
                )),
          ),
          SizedBox(
            height: 15,
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'Catagories',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 160,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: catagoriesBuilder,
              itemCount: catagories.length,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Pabular Courses',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'see all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff344FAC),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 207,
            child: ListView.builder(
              itemBuilder: courseBuilder,
              itemCount: pabularCourses.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'New Courses',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'see all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff344FAC),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 203,
            child: ListView.builder(
              itemBuilder: courseBuilder,
              itemCount: newCourses.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  build_mycourses() {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: mycourses.length,
        itemBuilder: myCourseBuilder,
      ),
    );
  }

  Widget myCourseBuilder(BuildContext context, int index) {
    return Container(
      height: 250,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 125,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13))),
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Python',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 21),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Color(0xff8E9CCC),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xff202D5A)),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '50%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'left time',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '20:15',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 100,
                    child: RaisedButton(
                      color: Color(0xff202D5A),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/MyCourseContentPage');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          'continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget catagoriesBuilder(BuildContext context, int index) {
    return Container(
      width: 150,
      padding: EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 125,
            height: 125,
            child: RaisedButton(
              padding: EdgeInsets.all(8),
              onPressed: () {
                Navigator.of(context).pushNamed('/CatagoryPage').then((_) {
                  setState(() {
                    SystemChrome.setPreferredOrientations([
                      DeviceOrientation.portraitUp,
                      DeviceOrientation.portraitDown,
                    ]);
                  });
                });
              },
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(75),
              ),
              color: Colors.white,
              child: SvgPicture.asset('assets/svgImages/catagory.svg'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Programming',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
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
