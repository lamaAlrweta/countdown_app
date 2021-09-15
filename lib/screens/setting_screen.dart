import 'package:flutter/material.dart';

import '../widgets/settings_button_widgets.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              SizedBox(
                height: 25,
              ),
              SettingsButtons(
                  textonTop: "Language",
                  // function1: () {},
                  // function2: () {},
                  buttonName1: "العربية",
                  buttonName2: "English",
                  height: 60,
                  width: 110),
              SizedBox(
                height: 25,
              ),
              SettingsButtons(
                textonTop: "Theme",
                // function1: () {},
                // function2: () {},
                buttonName1: "Light",
                buttonName2: "Dark",
                height: 60,
                width: 110,
                font: FontWeight.w600,
              ),
              SizedBox(
                height: 25,
              ),
              SettingsButtons(
                textonTop: "Our Team",
                font: FontWeight.normal,
                // function1: () {},
                // function2: () {},
                buttonName1: "Lama Alrweta\n @lamruabd",
                buttonName2: "Afaf Alsmel\n @AfafAlsmel",
                height: 50,
                width: 110,
              ),
            ])),
      )),
    );
  }
}
