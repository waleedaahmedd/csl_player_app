import 'dart:ui';

import 'package:flutter/widgets.dart';

class CustomColors {
  static const Color color1 = Color.fromRGBO(0,82,136,1);
  static Color tintColor1 = const Color.fromRGBO(0,82,136, 0.5);

  static const Color color2 = Color.fromRGBO(91,91,92,1);
  static Color tintColor2 = const Color.fromRGBO(91,91,92, 0.5);

  static Gradient gradientColor1 = const LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: <Color>[Color.fromRGBO(196, 219, 234,0.5),
    Color.fromRGBO(252, 255, 255,1),]);

  static LinearGradient linearGradient1 = const LinearGradient(colors: <Color>[
    Color.fromRGBO(255, 122, 0, 1),
    Color.fromRGBO(255, 184, 0, 1),
  ]);
}
