import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:redes_app/screens/HomePage.dart';

// Fluro Attempt
var homeHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return HomePage();
});

var cProfileHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return null;
});

var uProfileHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return null;
});
