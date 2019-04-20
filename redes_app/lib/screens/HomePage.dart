import 'package:flutter/material.dart';
import 'package:redes_app/screens/HomePageBody.dart';
import 'package:redes_app/widgets/AppBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldState = GlobalKey<ScaffoldState>();
  Size deviceSize;
  // ignore: unused_field
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    deviceSize = MediaQuery.of(context).size;

    return homeScaffold(context);
  }

  Widget homeScaffold(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: Scaffold(
          key: _scaffoldState,
          body: bodySliverList(),
        ),
      );

  Widget bodySliverList() {
    return Column(
      children: <Widget>[
        GradientAppBar(),
        HomePageBody(),
      ],
    );
  }
}
