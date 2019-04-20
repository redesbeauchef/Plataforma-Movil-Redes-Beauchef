import 'package:flutter/material.dart';
import 'package:redes_app/util/Company.dart';
import 'package:redes_app/util/uidata.dart';
import 'package:redes_app/widgets/CompaniesRow.dart';

class CompanyProfile extends StatelessWidget {
  final Company company;

  CompanyProfile(this.company);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return Container(
        child: Image.network(
          "http://ingenieria.uchile.cl/u/ImageServlet?idDocumento=106702&indice=0",
          fit: BoxFit.cover,
          height: 300.0,
        ),
        constraints: BoxConstraints.expand(height: 300.0));
  }

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          Colors.white10,
          Colors.white,
        ],
        stops: [0.5, 0.9],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.0, 1.0),
      )),
    );
  }

  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return ListView(
      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        CompanySummary(company, horizontal: false),
        Container(
          color: Colors.white,

          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_overviewTitle,
              style: UIData().headerTextStyle
              ),
              SizedBox(height: 10.0),
              Text(company.description,
              )
            ],
          ),
        )
      ],
    );
  }

  Container _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top
      ),
      child: BackButton(color: Colors.white,),
    );
  }
}
/*
Text(company.description),
            SizedBox(height: 4.0,),
            Hero(
              tag: "company-hero-${company.id}",
              child: Container(
                width: 92.0,
                height: 92.0,
                child: CircleAvatar(
                    radius: 5.0,
                    backgroundImage: AssetImage(
                      company.logo,
                    )
                ),
              ),
            )
 */
