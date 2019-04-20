import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:redes_app/Redes.dart';
import 'package:redes_app/routes.dart/Routes.dart';


void main() {
  //routes
  final router = Router();
  Routes.configureRoutes(router);

  //runApp
  runApp(RedesApp());
}
