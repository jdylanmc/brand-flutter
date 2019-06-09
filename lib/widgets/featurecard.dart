import 'package:brand_flutter/models/cardviewmodel.dart';
import 'package:flutter/material.dart';

abstract class AbstractCard extends StatelessWidget { }




class FeatureCard extends AbstractCard {
  final CardViewModel viewModel;
  final double
      parallaxPercent; // [0.0, 1.0] (0.0 for all the way right, 1.0 for all the way left)

  FeatureCard({
    this.viewModel,
    this.parallaxPercent = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Background
        new ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(1.0),
            bottomRight: Radius.circular(1.0),
          ),
          child: new Container(
            child: new FractionalTranslation(
              translation: new Offset(parallaxPercent * 2.0, 0.0),
              child: new OverflowBox(
                maxWidth: double.infinity,
                child: new Image.asset(
                  viewModel.backdropAssetPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        // Content
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: new Text(
                viewModel.titleText,
                style: new TextStyle(
                  color: Colors.white,
                  fontFamily: 'petita',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            new Expanded(child: new Container()),
            new Expanded(
              child: new Text(
                viewModel.prominentText,
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 80.0,
                  fontFamily: 'petita',
                  letterSpacing: -5.0,
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: new Text(
                    viewModel.subText,
                    style: new TextStyle(
                      color: Colors.white,
                      fontFamily: 'petita',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                )
              ],
            ),
            new Expanded(child: new Container()),
            new Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: new RaisedButton(
                child: Text(viewModel.buttonText),
                shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                color: Colors.white,
                elevation: 4.0,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  // Perform some action
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
