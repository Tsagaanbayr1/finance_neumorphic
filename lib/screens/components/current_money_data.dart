import 'package:flutter/material.dart';

import 'custom_circle_painter.dart';

class CurrentMoneyData extends StatelessWidget {
  const CurrentMoneyData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: HalfCircle(diameter: 190),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Lorem',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '\$567,57',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildClippedCircle() {
    return Text('Hello');
  }
}

class HalfCircle extends StatelessWidget {
  final double diameter;
  const HalfCircle({Key key, this.diameter = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}
