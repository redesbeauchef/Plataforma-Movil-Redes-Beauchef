import 'package:flutter/material.dart';
import 'package:redes_app/util/Company.dart';
import 'package:redes_app/widgets/CompaniesRow.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            sliver: SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => CompanySummary(companies[index]),
                childCount: companies.length,
              ),
              itemExtent: 180.0,
            ),
          )
        ],
      ),
    );
  }
}
