import 'dart:ui';

import 'package:brand_flutter/models/cardviewmodel.dart';
import 'package:brand_flutter/widgets/cardflipper.dart';
import 'package:flutter/material.dart';

class FeatureTab extends StatefulWidget {
  @override
  _FeatureTabState createState() => _FeatureTabState();
}

class _FeatureTabState extends State<FeatureTab> {
  double scrollPercent = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Expanded(
            child: new CardFlipper(
                cards: demoCards,
                onScroll: (double scrollPercent) {
                  setState(() => this.scrollPercent = scrollPercent);
                }),
          ),
        ],
      ),
    );
  }
}

class ScrollIndicator extends StatelessWidget {
  final int cardCount;
  final double scrollPercent;

  ScrollIndicator({
    this.cardCount,
    this.scrollPercent,
  });

  @override
  Widget build(BuildContext context) {
    return new CustomPaint(
      painter: new ScrollIndicatorPainter(
        cardCount: cardCount,
        scrollPercent: scrollPercent,
      ),
      child: new Container(),
    );
  }
}

class ScrollIndicatorPainter extends CustomPainter {
  final int cardCount;
  final double scrollPercent;
  final Paint trackPaint;
  final Paint thumbPaint;

  ScrollIndicatorPainter({
    this.cardCount,
    this.scrollPercent,
  })  : trackPaint = new Paint()
          ..color = const Color(0xFF444444)
          ..style = PaintingStyle.fill,
        thumbPaint = new Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    // Draw track
    canvas.drawRRect(
      new RRect.fromRectAndCorners(
        new Rect.fromLTWH(
          0.0,
          0.0,
          size.width,
          size.height,
        ),
        topLeft: new Radius.circular(3.0),
        topRight: new Radius.circular(3.0),
        bottomLeft: new Radius.circular(3.0),
        bottomRight: new Radius.circular(3.0),
      ),
      trackPaint,
    );

    // Draw thumb
    final thumbWidth = size.width / cardCount;
    final thumbLeft = scrollPercent * size.width;

    Path thumbPath = new Path();
    thumbPath.addRRect(
      new RRect.fromRectAndCorners(
        new Rect.fromLTWH(
          thumbLeft,
          0.0,
          thumbWidth,
          size.height,
        ),
        topLeft: new Radius.circular(3.0),
        topRight: new Radius.circular(3.0),
        bottomLeft: new Radius.circular(3.0),
        bottomRight: new Radius.circular(3.0),
      ),
    );

    // Thumb shape
    canvas.drawPath(
      thumbPath,
      thumbPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
