import 'package:flutter/material.dart';
import 'package:redes_app/screens/home_page.dart';
import 'package:redes_app/util/uidata.dart';
import 'package:fluro/fluro.dart';

class RedesApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: UIData.appName,
    theme: ThemeData(
      primaryColor: Colors.black,
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
