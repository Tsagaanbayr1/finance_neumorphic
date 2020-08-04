import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fixed_sizes.dart';
import './uncorn_outline.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Title
        Text(
          'Your card number',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        SizedBox(height: kDefaultMargin),
        // Card
        Container(
          height: 80.0,
          width: double.infinity,
          child: UnicornOutline(
            gradient: unicornGradient,
            radius: 24,
            strokeWidth: 1,
            // Details
            child: Row(
              children: <Widget>[
                // Icon
                Image.asset('assets/images/credit_card_small.png'),
                SizedBox(
                  width: kDefaultPadding * 2,
                ),
                // Number with name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Number
                    Text(
                      '**** **** **** 0000',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 20.0,
                      ),
                    ),
                    // Name
                    Text(
                      'Dolor sit amet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
