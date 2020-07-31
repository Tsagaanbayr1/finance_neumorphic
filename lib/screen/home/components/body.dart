import 'package:finance_neumorphic/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/search_box.dart';
import '../components/user_name_pic.dart';
import 'bottom_navigation_bar.dart';
import 'circular_progress_bar.dart';
import 'credit_card.dart';
import 'progress_bar.dart';
import 'unicorn_outline.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: backgroundGradient),
      child: CustomBottomNavigation(
        child: ListView(
          children: <Widget>[
            UserNamePic(),
            SearchBox(),
            ProgressBar(),
            CreditCard(),
            SizedBox(
              height: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
