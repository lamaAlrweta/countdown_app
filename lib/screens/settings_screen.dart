import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        margin: EdgeInsets.all(10),
        height: 50.0,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Theme.of(context).buttonColor)),
          onPressed: () {},
          padding: EdgeInsets.all(10.0),
          child: Text("English",
              style: TextStyle(
                  fontSize: 49,
                  fontFamily: ' Montserrat-Arabic',
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
