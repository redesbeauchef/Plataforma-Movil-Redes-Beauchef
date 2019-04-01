import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldState = GlobalKey<ScaffoldState>();
  Size deviceSize;
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    deviceSize = MediaQuery.of(context).size;

    return homeScaffold(context);
  }

  Widget homeScaffold(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      canvasColor: Colors.transparent,
    ),
    child: Scaffold(
      key: _scaffoldState,
      body: bodySliverList(),
    ),
  );

  Widget bodySliverList() {

  }
}
