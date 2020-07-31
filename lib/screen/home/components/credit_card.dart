import 'package:finance_neumorphic/constants/colors.dart';
import 'package:flutter/material.dart';

import 'unicorn_outline.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 8.0, bottom: 8.0),
          child: Text(
            'Your card number:',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          padding: EdgeInsets.all(.5),
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: UnicornOutline(
            strokeWidth: 1,
            radius: 24,
            gradient: unicornGradient,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'assets/images/credit_card_small.png',
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '**** **** **** 0000',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.3),
                            fontSize: 20.0),
                      ),
                      Text(
                        'Dolor sit amet',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
