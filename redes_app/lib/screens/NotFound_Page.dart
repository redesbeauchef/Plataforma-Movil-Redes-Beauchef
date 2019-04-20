import 'package:flutter/material.dart';
import 'package:redes_app/util/uidata.dart';


class NotFoundPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(UIData.notFoundRoute),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Estamos Trabajando en esto :)"),
        )
      ),
    );
  }

}
