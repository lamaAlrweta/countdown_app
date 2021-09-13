import 'package:flutter/material.dart';

import './screens/home_screen.dart';


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
        primarySwatch: Colors.white,
        primaryColor: Color.fromRGBO(113, 90, 206, 1),
        backgroundColor: Color.fromRGBO(0, 22, 30, 41),
        accentColor: Color.fromRGBO(75, 83, 228, 1),
        // accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Color.fromRGBO(75, 83, 228, 0.3),
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
