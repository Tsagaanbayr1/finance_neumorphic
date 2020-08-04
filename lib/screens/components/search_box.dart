import 'dart:ui';

import 'package:finance_neumorphi_app_ui_convert/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);
  final double _sigmaX = 10.0; // from 0-10
  final double _sigmaY = 10.0; // from 0-10
  final double _opacity = 0.1; // from 0-1.0

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: 60.0,
      width: deviceSize.width - 20.0,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        child: Stack(
          children: <Widget>[
            // Background

            Container(
              width: deviceSize.width - 20.0,
              height: 200.0,
              decoration: BoxDecoration(
                gradient: overlayGradient,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
            Positioned(
              top: 0.0,
              width: deviceSize.width - 20.0,
              height: 200.0,
              // Note: without ClipRect, the blur region will be expanded to full
              // size of the Image instead of custom size
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                child: Container(
                  color: Colors.black.withOpacity(_opacity),
                ),
              ),
            ),
            // Input
            Positioned.fill(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Lorem ipsum...',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: 20.0,
                        width: 20.0,
                        child: Image.asset(
                          'assets/images/search_button.png',
                          color: kPrimaryColor,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
