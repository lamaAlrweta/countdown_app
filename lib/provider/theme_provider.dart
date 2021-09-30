import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  // bool get isDarkMode {
  //   if (themeMode == ThemeMode.system) {
  //    // final brightness = SchedulerBinding.instance.window.platformBrightness;
  //    // return brightness == Brightness.dark;
  //   } else {
  //     return themeMode == ThemeMode.dark;
  //   }
  // }
  ThemeMode get getThememode {
    return themeMode;
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Montserrat-Arabic',
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(223, 223, 223, 1),
        fontFamily: 'Montserrat-Arabic',
      ),
    )
    // .apply(headlin1: Colors.white, displayColor: Colors.white)
    ,
    fontFamily: 'Montserrat-Arabic',
    textSelectionColor: Color.fromRGBO(255, 255, 255, 1),
    //HintColor
    hintColor: Color.fromRGBO(73, 90, 114, 1),
    //card color
    primaryColor: Color.fromRGBO(113, 90, 206, 1),

    scaffoldBackgroundColor: Color.fromRGBO(22, 30, 41, 1),
    backgroundColor: Color.fromRGBO(34, 46, 62, 1),
    //second color of card
    accentColor: Color.fromRGBO(75, 83, 228, 1),
    // buttonTheme: ButtonTheme.of(context).copyWith(
    //   buttonColor: Color.fromRGBO(34, 46, 62, 1),
    //   textTheme: ButtonTextTheme.primary,
  );

  static final lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color.fromRGBO(22, 30, 41, 1),
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat-Arabic',
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(47, 62, 84, 1),
        fontFamily: 'Montserrat-Arabic',
      ),
    ),

    fontFamily: 'Montserrat-Arabic',
    textSelectionColor: Color.fromRGBO(22, 30, 41, 1),
    //HintColor
    hintColor: Color.fromRGBO(47, 62, 84, 1),
    //card color
    primaryColor: Color.fromRGBO(113, 90, 206, 1),

    scaffoldBackgroundColor: Color.fromRGBO(250, 252, 253, 1),
    // scaffoldBackgroundColor: Color.fromRGBO(0, 22, 30, 41),
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    //second color of card
    accentColor: Color.fromRGBO(75, 83, 228, 1),
  );
}
