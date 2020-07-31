import 'package:finance_neumorphic/constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

import 'circular_progress_bar.dart';
import 'custom_circle_painter.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        buildTitle(),
        Stack(
          children: <Widget>[
            SizedBox(
              width: deviceSize.width * 0.8,
              child: Image.asset(
                'assets/images/home_background.png',
                fit: BoxFit.contain,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: deviceSize.width * 0.5,
                  height: deviceSize.width * 0.5,
                  decoration: BoxDecoration(
                    gradient: pinkBackgroundGradient,
                    shape: BoxShape.circle,
                  ),
                  child: Container(),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: deviceSize.width * 0.6,
                  height: deviceSize.width * 0.6,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CustomPaint(
                      child: CurrentMoneyData(),
                      foregroundPainter: CircularProgressBarPainter(
                        backgroundColor: Colors.transparent,
                        foregroundColor: kAccentColor,
                        percentage: 0.6,
                        strokeWidth: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container buildTitle() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
      child: Text(
        'Lorem ipsum amer',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

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
