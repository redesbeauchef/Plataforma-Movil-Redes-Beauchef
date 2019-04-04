import 'package:flutter/material.dart';
import 'package:redes_app/util/uidata.dart';

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
      canvasColor: Colors.white,
    ),
    child: Scaffold(
      key: _scaffoldState,
      body: bodySliverList(),
    ),
  );

  Widget bodySliverList() {
    return CustomScrollView(
      slivers: <Widget>[
        appBar(),
      ],
    );
  }

  Widget appBar() => SliverAppBar(
    backgroundColor: Colors.white,
    pinned: true,
    elevation: 10.0,
    forceElevated: true,
    expandedHeight: 150,


    leading: IconButton(
      icon: const Icon(Icons.menu),
      tooltip: 'Menu',
      onPressed: null,
    ),

    actions: <Widget>[
      IconButton(
        alignment: Alignment(0, 0),
        icon: const Icon(Icons.search),
        color: Colors.grey,
        tooltip: 'Search',
        onPressed: () {/* ... */},      )
    ],

    flexibleSpace: FlexibleSpaceBar(
      background: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: UIData.kitGradients),
        ),
      ),
      centerTitle: true,
      title: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () => {},
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/redesIcon.png'),
              ),
            ),
            /*Text(
              UIData.appName,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
              ),
            ),*/
          ],
        ),
      ),
    ),
  );
}
