import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';

class UIData {
  //routes
  static const String root = "/";
  static const String homeRoute = "/home";
  static const String login = "/login";
  static const String userProfile = "/uProfile";
  static const String companyProfile = "/cProfile";
  static const String companyTimeTable = "/cProfile/timetable";
  static const String notFoundRoute = "Not Found!";

  //strings
  static const String appName = "RedesApp";

  //fonts
  static const String montFont = "Montserrat";
  static const String montBoldFont = "Montserrat-Bold.ttf";

  final appBarStyle = TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700);

  final headerTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  final subHeaderTextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  final regularTexStyle = TextStyle(
    fontSize: 11.0,
    fontWeight: FontWeight.w100,
  );

//images
  //...

  //login
  //...

//colors
  static List<Color> kitGradients = [
    //Color(0xff1a87c5),
    Colors.white,
    Colors.white,
  ];

  //gneric
  static const String error = "Error";
  static const String success = "Success";
  static const String ok = "OK";
  static const String forgot_password = "Forgot Password?";
  static const String something_went_wrong = "Something went wrong";
  static const String coming_soon = "Coming Soon";
}
