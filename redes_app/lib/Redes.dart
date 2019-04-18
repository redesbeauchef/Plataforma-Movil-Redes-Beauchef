import 'package:flutter/material.dart';
import 'package:redes_app/screens/HomePage.dart';
import 'package:redes_app/util/uidata.dart';
import 'package:fluro/fluro.dart';

class RedesApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: UIData.appName,
    theme: ThemeData(
      primaryColor: Color(0xff1a87c5),
      fontFamily: UIData.montFont,
    ),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: HomePage(),

  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
