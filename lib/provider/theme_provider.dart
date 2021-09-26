import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    //  textTheme: Theme.of(context)
    //               .textTheme
    //               .apply(bodyColor: Colors.white, displayColor: Colors.white),
    fontFamily: 'Montserrat-Arabic',
    textSelectionColor: Color.fromRGBO(198, 199, 200, 1),
    //HintColor
    hintColor: Color.fromRGBO(73, 90, 114, 1),
    //card color
    primaryColor: Color.fromRGBO(113, 90, 206, 1),

    scaffoldBackgroundColor: Color.fromRGBO(22, 30, 41, 1),
    // scaffoldBackgroundColor: Color.fromRGBO(0, 22, 30, 41),
    backgroundColor: Color.fromRGBO(34, 46, 62, 1),
    //second color of card
    accentColor: Color.fromRGBO(75, 83, 228, 1),
    // buttonTheme: ButtonTheme.of(context).copyWith(
    //   buttonColor: Color.fromRGBO(34, 46, 62, 1),
    //   textTheme: ButtonTextTheme.primary,
  );

  static final lightTheme = ThemeData(
    //  textTheme: Theme.of(context)
    //               .textTheme
    //               .apply(bodyColor: Colors.white, displayColor: Colors.white),
    fontFamily: 'Montserrat-Arabic',
    textSelectionColor: Color.fromRGBO(198, 199, 200, 1),
    //HintColor
    hintColor: Color.fromRGBO(73, 90, 114, 1),
    //card color
    primaryColor: Color.fromRGBO(113, 90, 206, 1),

    scaffoldBackgroundColor: Color.fromRGBO(250, 252, 253, 1),
    // scaffoldBackgroundColor: Color.fromRGBO(0, 22, 30, 41),
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    //second color of card
    accentColor: Color.fromRGBO(75, 83, 228, 1),
    // buttonTheme: ButtonTheme.of(context).copyWith(
    //   buttonColor: Color.fromRGBO(34, 46, 62, 1),
    //   textTheme: ButtonTextTheme.primary,
  );
}
