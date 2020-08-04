import 'package:finance_neumorphi_app_ui_convert/constants/colors.dart';
import 'package:finance_neumorphi_app_ui_convert/constants/fixed_sizes.dart';
import 'package:flutter/material.dart';

class UserNameProfileIcon extends StatelessWidget {
  const UserNameProfileIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          // Profile icon
          Stack(
            children: <Widget>[
              // Background
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/profile_background.png'),
              ),
              // Profile
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor,
                    ),
                    child: Image.asset(
                      'assets/images/profile.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: kDefaultPadding / 2), // 10
          // Name
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Lorem',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Ipsum dolor',
                style: TextStyle(color: Colors.grey.withOpacity(0.5)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
