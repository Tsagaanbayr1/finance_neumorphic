import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fixed_sizes.dart';
import './progress_bar.dart';
import './search_box.dart';
import './username_profile.dart';
import 'bottom_navigation.dart';
import 'credit_card.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Custom bottom navigation bar
        CustomBottomNavigation(
          // Screen contents
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: backgroundGradient,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, // 20
              ),
              child: Column(
                children: <Widget>[
                  // User name with profile icon
                  UserNameProfileIcon(),
                  // Search box with icon
                  SearchBox(),
                  // Title with progress bar
                  ProgressBar(),
                  // Card with title
                  CreditCard(),
                  // Bottom navigation bar height
                  SizedBox(height: 80.0),
                ],
              ),
            ),
          ),
        ),
        // Menu button
        buildMenuButton(),
      ],
    );
  }

  Positioned buildMenuButton() {
    return Positioned(
      top: kDefaultRadius,
      right: kDefaultRadius,
      child: Image.asset(
        'assets/images/menu.png',
      ),
    );
  }
}
