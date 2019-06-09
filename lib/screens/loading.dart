import 'dart:async';

import 'package:flutter/material.dart';
import 'package:brand_flutter/widgets/splash.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}


class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () => {
      Navigator.of(context).pushReplacementNamed('/landing')
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Splash(),
    );
  }
}
