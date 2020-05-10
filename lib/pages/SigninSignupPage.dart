import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninSignupPage extends StatefulWidget {
  @override
  _SigninSignupPageState createState() => _SigninSignupPageState();
}

class _SigninSignupPageState extends State<SigninSignupPage> {
  Size size = null;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Color(0xff202D5A),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0),
                insets: EdgeInsets.symmetric(horizontal: 18.0)),
            tabs: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            'IMA',
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            biuld_signin(),
            biuld_register(),
          ],
        ),
      ),
    );
  }

  biuld_signin() {
    return Container(
      color: Color(0xffF5F5F5),
      child: SingleChildScrollView(
        child: Container(
          height: 570,
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                color: Colors.white,
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          'Sign in with',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 21),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 40,
                            child: OutlineButton(
                              padding: EdgeInsets.all(2),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/svgImages/google-icon.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 4,),
                                  Text('Sign In')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            child: OutlineButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              borderSide: BorderSide(
                                color: Colors.blue[700],
                                width: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/svgImages/facebook.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 3,),
                                  Text('Sign In')
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Text(
                          'OR',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 21),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            hintText: 'Email'),
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                            ),
                            hintText: 'Password'),
                        autofocus: false,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: RaisedButton(
                          color: Color(0xff202D5A),
                          onPressed: () {},
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('By Signing In, you accept app\'s'),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: new Text(
                      'terms & conditions',
                      style: TextStyle(
                          color: Colors.blue[900],
                          decoration: TextDecoration.underline),
                    ),
                    onTap: () {},
                  ),
                  Text(' and')
                ],
              )),
              InkWell(
                child: new Text(
                  'privacy policy.',
                  style: TextStyle(
                      color: Colors.blue[900],
                      decoration: TextDecoration.underline),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  biuld_register() {
    return Container(
      color: Color(0xffF5F5F5),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 805,
              margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Card(
                color: Colors.white,
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          'Register with',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 21),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 40,
                            child: OutlineButton(
                              padding: EdgeInsets.all(2),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/svgImages/google-icon.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 4,),
                                  Text('Register')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            child: OutlineButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              borderSide: BorderSide(
                                color: Colors.blue[700],
                                width: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/svgImages/facebook.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 3,),
                                  Text('Register')
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Text(
                          'OR',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 21),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.perm_identity,
                            ),
                            hintText: 'First Name'),
                        autofocus: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.perm_identity,
                            ),
                            hintText: 'Last Name'),
                        autofocus: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            hintText: 'Email'),
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.flag,
                            ),
                            hintText: 'Country'),
                        autofocus: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone,
                                  ),
                                  hintText: 'Code'),
                              autofocus: false,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(hintText: 'Contact'),
                              autofocus: false,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                            ),
                            hintText: 'Password'),
                        autofocus: false,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                            ),
                            hintText: 'Confirm Password'),
                        autofocus: false,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: RaisedButton(
                          color: Color(0xff202D5A),
                          onPressed: () {},
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text('By Signing In, you accept app\'s'),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: new Text(
                    'terms & conditions',
                    style: TextStyle(
                        color: Colors.blue[900],
                        decoration: TextDecoration.underline),
                  ),
                  onTap: () {},
                ),
                Text(' and')
              ],
            )),
            InkWell(
              child: new Text(
                'privacy policy.',
                style: TextStyle(
                    color: Colors.blue[900],
                    decoration: TextDecoration.underline),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
