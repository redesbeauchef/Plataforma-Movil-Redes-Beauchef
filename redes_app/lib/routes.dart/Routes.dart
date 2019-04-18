import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:redes_app/screens/HomePage.dart';
import 'package:redes_app/util/uidata.dart';

class Routes{
  static void configureRoutes(Router router){
    //ErrorPage
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });

    //HomePage
    router.define(UIData.homeRoute, handler: Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
      return HomePage();
    }));
  }
}