import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../widgets/modal_bottom_sheet.dart';

class modalBottomSheetScreen extends StatefulWidget {
  final String title;
  final String emoji;
  final DateTime datePicker;
  final DateTime TimePicker;
  final String notes;

  modalBottomSheetScreen({
    Key key,
    this.title,
    this.emoji,
    this.datePicker,
    this.TimePicker,
    this.notes,
  }) : super(key: key);
  @override
  _modalBottomSheetScreenState createState() => _modalBottomSheetScreenState();
}

class _modalBottomSheetScreenState extends State<modalBottomSheetScreen> {
  String _date = "Not set";
  String _time = "Not set";

  final TextEditingController textEditingController1 = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();

  DateTime dateTime = DateTime.now();

  datePicker() {
    DatePicker.showDatePicker(context,
        theme: DatePickerTheme(
          itemStyle: TextStyle(
            color: Colors.white,
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          cancelStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Montserrat-Arabic',
              fontWeight: FontWeight.w400),
          doneStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Montserrat-Arabic',
              fontWeight: FontWeight.w400),
          containerHeight: 210.0,
        ),
        showTitleActions: true,
        minTime: DateTime(2000, 1, 1),
        maxTime: DateTime(2050, 12, 31), onConfirm: (date) {
      _date = '${date.year}-${date.month}-${date.day}';
      setState(() {
        textEditingController1.text = " $_date".toString();
      });
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  timePicker() {
    DatePicker.showTimePicker(context,
        theme: DatePickerTheme(
          itemStyle: TextStyle(
            color: Colors.white,
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          cancelStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Montserrat-Arabic',
              fontWeight: FontWeight.w400),
          doneStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Montserrat-Arabic',
              fontWeight: FontWeight.w400),
          containerHeight: 210.0,
        ),
        showTitleActions: true, onConfirm: (time) {
      _time = '${time.hour}:${time.minute}';
      setState(() {
        textEditingController2.text = "$_time".toString();
      });
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  Widget addCancelButton(
    String Buttontext,
    textAlign,
    textColor,
    backgroundColor,
  ) {
    return Align(
      alignment: textAlign,
      child: ButtonTheme(
        minWidth: 20.0,
        height: 25.0,
        child: RaisedButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: Text(Buttontext,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Montserrat-Arabic',
              )),
          onPressed: Buttontext == 'add'
              ? () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }
                  _formKey.currentState.save();
                }
              : () => Navigator.pop(context, false),
          color: backgroundColor,
          textColor: textColor,
          elevation: 0,
        ),
      ),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  addCancelButton(
                      'Add',
                      Alignment.topRight,
                      Theme.of(context).accentColor,
                      Theme.of(context).primaryColor.withOpacity(0.4)),
                  addCancelButton(
                      'Cancel',
                      Alignment.topLeft,
                      Theme.of(context).cardColor,
                      Theme.of(context).backgroundColor),
                  SizedBox(
                    height: 80,
                  ),
                  modalBottomSheet(
                    userInput: widget.title,
                    buttonFeild: 'Title',
                    buttonHinit: 'Ex: My friend birthday',
                    buttonKeyboardType: TextInputType.text,
                    butonColor: Theme.of(context).backgroundColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    userInput: widget.emoji,
                    buttonFeild: 'Emoji',
                    buttonHinit: 'Enter an emoji',
                    buttonKeyboardType: TextInputType.text,
                    butonColor: Theme.of(context).backgroundColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    userInput: widget.datePicker.toString(),
                    buttonFeild: 'Date',
                    buttonHinit: 'Mar 19,2022',
                    textEditingController: textEditingController1,
                    buttonKeyboardType: TextInputType.datetime,
                    IconButtonFuncation: () => datePicker(),
                    butonColor: Theme.of(context).backgroundColor,
                    icon: Icons.calendar_today,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    userInput: widget.TimePicker.toString(),
                    buttonFeild: 'Time',
                    buttonHinit: '9:00 am',
                    textEditingController: textEditingController2,
                    IconButtonFuncation: () => timePicker(),
                    buttonKeyboardType: TextInputType.datetime,
                    butonColor: Theme.of(context).backgroundColor,
                    icon: Icons.access_time_sharp,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    userInput: widget.notes,
                    buttonFeild: 'Notes',
                    buttonHinit: 'To Do list',
                    buttonKeyboardType: TextInputType.multiline,
                    maxLine: 5,
                    butonColor: Theme.of(context).primaryColor.withOpacity(0.4),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
