import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:redes_app/routes.dart/RouteHandlers.dart';
import 'package:redes_app/screens/CompanyProfile.dart';
import 'package:redes_app/screens/HomePage.dart';
import 'package:redes_app/screens/NotFound_Page.dart';
import 'package:redes_app/util/uidata.dart';

class Routes {

  // Fluro Attempt
  static void configureRoutes(Router router) {
    //ErrorPage
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    //HomePage
    router.define(UIData.homeRoute, handler: homeHandler);

    //CompanyProfile
    router.define(UIData.companyProfile, handler: cProfileHandler);

    //UserProfile
    router.define(UIData.userProfile, handler: uProfileHandler);
  }

  // Flutter Attempt
  static Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case UIData.homeRoute:
        return _buildRoute(settings, HomePage());
      case UIData.companyProfile:
        return _buildRoute(settings, CompanyProfile(null));
      case UIData.userProfile:
        return _buildRoute(settings, NotFoundPage());
      default:
        return _buildRoute(settings, NotFoundPage());
    }
  }

  static MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }
}
