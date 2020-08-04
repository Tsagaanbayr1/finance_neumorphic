import 'package:finance_neumorphic/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  final Widget child;
  CustomBottomNavigation({Key key, this.child}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int choosen = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.child,
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: overlayGradient,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ...[0, 1, 2, 3, 4].map(
                    (index) => _getChoosen(index),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  final List<String> _titles = [
    'Starred',
    'Chart',
    'Home',
    'News',
    'Options',
  ];
  final List<String> _images = [
    'assets/images/star.png',
    'assets/images/chart.png',
    'assets/images/home.png',
    'assets/images/bell.png',
    'assets/images/settings.png',
  ];

  Widget _getTitleWidget(index) {
    return Text(_titles[index], style: TextStyle(color: kPrimaryColor));
  }

  Widget _getImageWidget(index) {
    if (choosen == index)
      return InkWell(
        onTap: () => setState(() {
          choosen = index;
        }),
        child: Container(
          height: 20.0,
          width: 20.0,
          child: Image.asset(
            _images[index],
            color: kPrimaryColor,
            fit: BoxFit.cover,
          ),
        ),
      );
    else {
      return InkWell(
        onTap: () => setState(() {
          choosen = index;
        }),
        child: Container(
          height: 20.0,
          width: 20.0,
          child: Image.asset(
            _images[index],
            color: Colors.grey,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }

  Widget _getChoosen(index) {
    if (choosen == index) {
      return Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/home_background.png',
              ),
              fit: BoxFit.cover),
        ),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _getImageWidget(index),
              _getTitleWidget(index),
            ],
          ),
        ),
      );
    } else
      return _getImageWidget(index);
  }
}
