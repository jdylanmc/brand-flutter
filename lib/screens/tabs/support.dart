import 'package:flutter/material.dart';

class SupportTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Text("Support")),
            ],
          )
        )
      )
    );
  }
}
