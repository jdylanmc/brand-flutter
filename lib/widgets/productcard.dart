import 'package:brand_flutter/models/cardviewmodel.dart';
import 'package:flutter/material.dart';

import 'featurecard.dart';

class ProductCard extends AbstractCard {
  final CardViewModel viewModel;
  final double
      parallaxPercent; // [0.0, 1.0] (0.0 for all the way right, 1.0 for all the way left)

  ProductCard({
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
              ),
            ),
          ),
        ),
        // Content
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                child: ClipRRect(
                    child: new Image.asset('assets/product.png'),
                    borderRadius: BorderRadius.circular(15.0)),
                padding:
                    EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 10)),
            new Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: new Text(
                viewModel.titleText,
                style: new TextStyle(
                  color: Colors.black87,
                  fontFamily: 'petita',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            new Padding(padding: EdgeInsets.all(10.0), child: new Container()),
            new Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width - 40.0,
                child: Column(
                  children: [
                    Text(viewModel.prominentText,
                        maxLines: 3,
                        style:
                            Theme.of(context).primaryTextTheme.subhead.copyWith(
                                  color: Colors.black,
                                ),
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: new RaisedButton(
                child: Text(viewModel.buttonText),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                color: Colors.black87,
                textColor: Colors.white,
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
