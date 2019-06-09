
import 'package:flutter/material.dart';
import 'package:brand_flutter/screens/loading.dart';
import 'package:brand_flutter/screens/tabpage.dart';

void main() {
  // Wrap your App in your storage container
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => LoadingScreen(),
          '/landing': (context) => TabPage()
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false);
  }
}

