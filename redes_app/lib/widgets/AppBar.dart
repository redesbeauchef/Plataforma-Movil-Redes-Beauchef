import 'package:flutter/material.dart';
import 'package:redes_app/util/uidata.dart';

/// First attempt of an appBar
/// Stefano Faraggi
///

Widget appBar() => SliverAppBar(
      backgroundColor: Colors.transparent,
      pinned: true,
      elevation: 5.0,
      forceElevated: true,
      expandedHeight: 150,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        tooltip: 'Menu',
        onPressed: null,
        iconSize: 30,
      ),
      actions: <Widget>[
        IconButton(
          alignment: Alignment(0, 0),
          icon: const Icon(Icons.search),
          color: Colors.grey,
          tooltip: 'Search',
          iconSize: 30,
          onPressed: () {
            /* ... */
          },
        )
      ],
      bottom: PreferredSize(
          child: Container(
            width: 0,
            height: 0,
          ),
          preferredSize: Size.fromHeight(0)),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: UIData.kitGradients),
          ),
          child: Image.asset(
            'assets/redesIcon.png',
            height: 100,
            width: 100,
          ),
        ),
        centerTitle: true,
        /*title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Image.asset(
            'assets/redesIcon.png',
            fit: BoxFit.contain,
            height: 100,
          ),
        ]),*/
      ),
    );


/// A simpler but functional appBar
/// Stefano Faraggi

class GradientAppBar extends StatelessWidget{
  final String title = "Redes Beauchef";
  final double barHeigth = 70.0;


  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Container(

      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeigth,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
            onTap: () {
              /* ... */
              },
            child: Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://www.jennstrends.com/wp-content/uploads/2013/10/bad-profile-pic-2-768x768.jpeg"
                  ),
                ),
              ),
            ),
          ),
          Text(title),
          IconButton(
            alignment: Alignment(0, 0),
            icon: const Icon(Icons.search),
            color: Colors.grey,
            tooltip: 'Search',
            iconSize: 35,
            onPressed: () {
              /* ... */
            }
          ),
        ],
      )
    );
  }}