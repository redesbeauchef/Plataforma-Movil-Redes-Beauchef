import 'package:flutter/material.dart';
import 'package:redes_app/screens/CompanyProfile.dart';
import 'package:redes_app/util/Company.dart';
import 'package:redes_app/util/uidata.dart';

class CompanySummary extends StatelessWidget {
  final Company company;
  final bool horizontal;

  CompanySummary(this.company, {this.horizontal = true});

  CompanySummary.vertical(this.company) : horizontal = false;

  @override
  Widget build(BuildContext context) {

    final companyLogo = Container(
        margin: EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.topCenter,
        child: Hero(
            tag: "company-hero-${company.id}",
            child: Container(
              width: 92.0,
              height: 92.0,
              child: CircleAvatar(
                radius: 5.0,
                backgroundImage: AssetImage(company.logo),
              ),
            )));

    final companyCardContent = Container(
      margin: EdgeInsets.fromLTRB(horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 4.0,
          ),
          Text(company.name, style: UIData().headerTextStyle),
          SizedBox(
            height: 10.0,
          ),
          Text(
            company.shortDescription,
            style: UIData().subHeaderTextStyle,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            company.offers,
            style: UIData().regularTexStyle,
          ),
        ],
      ),
    );

    final companyCard = Container(
      child: companyCardContent,
      height: 170.0,
      margin: horizontal ?
      EdgeInsets.only(left: 46.0)
      : EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
          color: horizontal ? Colors.white70 : Colors.white, //Color(0xff1a87c5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            )
          ]),
    );

    return GestureDetector(
      onTap: horizontal ?
          () => Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (_, __, ___) =>  CompanyProfile(company),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ))
      : null,
      child: Container(
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
      ),
    );
  }
}
