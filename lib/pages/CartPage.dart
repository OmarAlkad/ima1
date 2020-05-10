import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<int> courses = [1, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Cart',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: courseBuilder,
              ),
            ),
            Container(
              height: 135,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -2),
                    blurRadius: 6,
                    color: const Color(0xff000000).withOpacity(0.3),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '250 EGP',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      'have a promocode?',
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: size.width,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: RaisedButton(
                      color: Color(0xff202D5A),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text('Checkout',
                          style: TextStyle(color: Colors.white,
                          fontSize: 20)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget courseBuilder(BuildContext context, int index) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 240,
            margin: EdgeInsets.only(bottom: 15, top: 45, left: 10, right: 10),
            child: RaisedButton(
              elevation: 3,
              color: Colors.white,
              padding: EdgeInsets.only(bottom: 4),
              onPressed: () {},
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
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Python',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '50 EGP',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff344FAC),
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '100 EGP',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(Icons.delete),
                          color: Color(0xff202D5A),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 3)),
            margin: EdgeInsets.only(top: 18, left: 7),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
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
}
