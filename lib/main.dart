import 'package:countdown/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/add_countdown_form_scree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
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
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Color.fromRGBO(34, 46, 62, 1),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
