import 'package:finance_neumorphic/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserNamePic extends StatelessWidget {
  const UserNamePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildProfilePic(),
                  buildUserName(context),
                ],
              ),
            ],
          ),
          buildMenuButton(),
        ],
      ),
    );
  }

  Padding buildUserName(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Lorem',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Ipsum dolor',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }

  Stack buildProfilePic() {
    return Stack(
      children: <Widget>[
        Center(
          child: Image.asset(
            'assets/images/profile_background.png',
          ),
        ),
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/profile.png',
          ),
        ),
      ],
    );
  }

  Container buildMenuButton() {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/profile_background.png',
            ),
          )),
      child: Image.asset(
        'assets/images/menu_icon.png',
      ),
    );
  }
}
