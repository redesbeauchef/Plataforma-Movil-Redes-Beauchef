import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CompaniesRow();
  }

}

class CompaniesRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    final companyLogo = Container(
      margin: EdgeInsets.symmetric(
        vertical: 16.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: 
        Container(
          width: 92.0,
          height: 92.0,
          child: CircleAvatar(
            radius: 5.0,
            backgroundImage: AssetImage('assets/testLogo.jpg'),
          ),
        )
    );

    final companyCard = Container(
      height: 130.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Colors.white54, //Color(0xff1a87c5),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          )
        ]
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          companyCard,
          companyLogo,
        ],
      ),
    );
  }

}
