import 'package:flutter/material.dart';

const Color kAccentColor = Color(0xFFD3096C);
const Color kPrimaryColor = Color(0xFFFA4C9B);
const Color kLightColor = Color(0xAFA8D0E6);
const Color kDarkColor = Color(0xFF00574B);
const Color kBackgroundColor = Color(0xFF1D1F22);
const Color kLightBackgroundColor = Color(0xFF4F555D);

const Gradient backgroundGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    kLightBackgroundColor,
    kBackgroundColor,
  ],
);

const Gradient pinkBackgroundGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    kAccentColor,
    kPrimaryColor,
  ],
);

const Gradient unicornGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    kLightColor,
    Colors.black,
  ],
);

const Gradient overlayGradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    Color(0xFF34393E),
    Color(0xFF17191B),
  ],
);

// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12,

  /// Black color with 12% opacity
);
