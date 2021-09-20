import 'package:countdown/widgets/add_countdown_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCountdownFormScreen extends StatefulWidget {
  @override
  _AddCountdownFormScreenState createState() => _AddCountdownFormScreenState();
}

class _AddCountdownFormScreenState extends State<AddCountdownFormScreen> {
  DateTime _selectedDate;
  final TextEditingController _textEditingController = TextEditingController();

  _selectDate() async {
    DateTime pickedDate = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (context) {
        DateTime tempPickedDate;
        return Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.amber,
          ),
          child: Container(
            height: 250,
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CupertinoButton(
                        child: Text(
                          'Cancle',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoButton(
                        child: Text(
                          'done',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat-Arabic',
                              color: Colors.white,
                              backgroundColor: Colors.purple),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(tempPickedDate);
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                Expanded(
                  child: Container(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (DateTime dateTime) {
                        tempPickedDate = dateTime;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _textEditingController.text = pickedDate.toString();
      });
    }
  }

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
                  butonColor: Theme.of(context).backgroundColor,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Emoji',
                  buttonHinit: 'Enter an emoji',
                  buttonKeyboardType: TextInputType.text,
                  butonColor: Theme.of(context).backgroundColor,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Date',
                  buttonHinit: 'Mar 19,2022',
                  buttonKeyboardType: TextInputType.datetime,
                  IconButtonFuncation: () => _selectDate(),
                  butonColor: Theme.of(context).backgroundColor,
                  icon: Icons.calendar_today,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Time',
                  buttonHinit: '9:00 am',
                  buttonKeyboardType: TextInputType.text,
                  butonColor: Theme.of(context).backgroundColor,
                  icon: Icons.access_time_sharp,
                ),
                SizedBox(
                  height: 20,
                ),
                AddCountdownForm(
                  buttonFeild: 'Notes',
                  buttonHinit: 'To Do list',
                  buttonKeyboardType: TextInputType.text,
                  butonColor: Theme.of(context).backgroundColor,
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
