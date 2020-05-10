import 'package:flutter/material.dart';
import 'pages/HomeMycoursesPage.dart';
import 'pages/SigninSignupPage.dart';
import 'pages/CatagoryPage.dart';
import 'pages/CartPage.dart';
import 'pages/MyCourseContentPage.dart';
import 'pages/CourseDetailesPage.dart';
import 'pages/DoctorPage.dart';
import 'pages/VideoLiveLandScapePage.dart';
import 'pages/VideoLivePage.dart';
import 'pages/SearchPage.dart';


class RouteController {
  static Route<dynamic> getRoute(RouteSettings settings) {
    final Map args = settings.arguments as Map;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeMycoursesPage());
      case '/SigninSignupPage':
        return MaterialPageRoute(builder: (_) => SigninSignupPage());
      case '/CatagoryPage':
        return MaterialPageRoute(builder: (_) => CatagoryPage());
      case '/CartPage':
        return MaterialPageRoute(builder: (_) => CartPage());
      case '/MyCourseContentPage':
        return MaterialPageRoute(builder: (_) => MyCourseContentPage());
      case '/CourseDetailesPage':
        return MaterialPageRoute(builder: (_) => CourseDetailesPage());
      case '/DoctorPage':
        return MaterialPageRoute(builder: (_) => DoctorPage());
      case '/VideoPage':
        return MaterialPageRoute(builder: (_) => VideoLivePage());
      case '/SearchPage':
        return MaterialPageRoute(builder: (_) => SearchPage());
      case '/VideoLiveLandScapePage':
        return MaterialPageRoute(builder: (_) => VideoLiveLandScapePage());



    }
  }
}
