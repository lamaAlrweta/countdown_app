import 'package:countdown/widgets/add_countdown_form.dart';
import 'package:flutter/material.dart';

class AddCountdownFormScreen extends StatefulWidget {
  @override
  _AddCountdownFormScreenState createState() => _AddCountdownFormScreenState();
}

class _AddCountdownFormScreenState extends State<AddCountdownFormScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                AddCountdownForm(
                  buttonFeild: 'Title',
                  buttonHinit: 'Ex: My friend birthday',
                  buttonKeyboardType: TextInputType.text,
                  buttonColor: Theme.of(context).backgroundColor,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Emoji',
                  buttonHinit: 'Enter an emoji',
                  buttonKeyboardType: TextInputType.text,
                  buttonColor: Theme.of(context).backgroundColor,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Date',
                  buttonHinit: 'Mar 19,2022',
                  buttonKeyboardType: TextInputType.datetime,
                  buttonColor: Theme.of(context).backgroundColor,
                  icon: Icons.calendar_today,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Time',
                  buttonHinit: '9:00 am',
                  buttonKeyboardType: TextInputType.text,
                  buttonColor: Theme.of(context).backgroundColor,
                  icon: Icons.access_time_sharp,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Notes',
                  buttonHinit: 'To Do list',
                  buttonKeyboardType: TextInputType.text,
                  buttonColor: Theme.of(context).backgroundColor,
                  contentPaddingText: new EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 100.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
