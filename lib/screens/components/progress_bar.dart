import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fixed_sizes.dart';
import './circular_progress_bar.dart';
import './current_money_data.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        children: <Widget>[
          // Title
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding),
            child: Text(
              'Lorem ipsum amer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          // Circular progress bar
          Stack(
            children: <Widget>[
              // Background
              SizedBox(
                width: deviceSize.width * 0.9, // 90% of the device width
                child: Image.asset(
                  'assets/images/progress_bar_background.png',
                  fit: BoxFit.contain,
                ),
              ),
              // Subtitle with money
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
              // Progress bar
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: deviceSize.width * 0.55,
                    height: deviceSize.width * 0.55,
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
      ),
    );
  }
}
