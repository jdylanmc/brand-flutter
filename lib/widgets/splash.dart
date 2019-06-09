import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatelessWidget {
  const Splash({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/background.png',
              ),
            ),
          ),
          height: 350.0,
        ),
        Container(
          height: 350.0,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [
                    Colors.purpleAccent.withAlpha(175),
                    Colors.blueAccent.withAlpha(175),
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),
        // Container(
        //   decoration: BoxDecoration(color: Colors.orangeAccent),
        // ),
        Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "APPNAME",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 90,
                      child: Image.asset("assets/logo.png",
                          width: 128, height: 128)),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Text(
                    "THE. BRAND. MESSAGE.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Text(
                    "synergize end-to-end users with incentive,\ntransparent methodologies & deliver global systems\nwith your brand's bullshit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitThreeBounce(
                    color: Colors.white,
                    size: 50.0,
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Text(
                    "Please wait...",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  )
                ]),
          ),
        ])
      ],
    );
  }
}
