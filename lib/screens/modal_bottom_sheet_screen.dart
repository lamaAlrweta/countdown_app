import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../widgets/modal_bottom_sheet.dart';

// ignore: camel_case_types
class modalBottomSheetScreen extends StatefulWidget {
  String? title;
  String? emoji;
  String? datepicker;
  String? timepicker;
  String? notes;

  modalBottomSheetScreen({
    // Key key,
    this.title,
    this.emoji,
    this.datepicker,
    this.timepicker,
    this.notes,
  });
  // : super(key: key);
  @override
  _modalBottomSheetScreenState createState() => _modalBottomSheetScreenState();
}

// ignore: camel_case_types
class _modalBottomSheetScreenState extends State<modalBottomSheetScreen> {
  String _date = "Not set";
  String _time = "Not set";
  late final bool isEmojiVisible;
  late final bool isKeyboardVisible;
  final focusNode = FocusNode();
  late final Function onBlurred;

  final TextEditingController textEditingController1 = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();
  final TextEditingController textEditingControllerEmoji =
      TextEditingController();

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
      _time = '${time.hour}:${time.minute}:${time.second}';
      setState(() {
        textEditingController2.text = "$_time".toString();
      });
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  Widget addCancelButton(
    String buttontext,
    textAlign,
    textColor,
    backgroundColor,
    onPressedFuncation,
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
          child: Text(buttontext,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Montserrat-Arabic',
              )),
          onPressed: onPressedFuncation,
          color: backgroundColor,
          textColor: textColor,
          elevation: 0,
        ),
      ),
    );
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  addCancelButton(
                      'Add',
                      Alignment.topRight,
                      Theme.of(context).accentColor,
                      Theme.of(context).primaryColor.withOpacity(0.4), () {
                    if (!formKey.currentState!.validate()) {
                      return;
                    }
                    formKey.currentState!.save();
                    print(widget.title);
                    print(widget.emoji);
                    print(widget.timepicker);
                    print(widget.datepicker);
                    print(widget.notes);
                  }),
                  addCancelButton(
                      'Cancel',
                      Alignment.topLeft,
                      Theme.of(context).cardColor,
                      Theme.of(context).backgroundColor,
                      () => Navigator.pop(context, false)),
                  SizedBox(
                    height: 50,
                  ),
                  modalBottomSheet(
                    // title: widget.title,
                    buttonFeild: 'Title',
                    buttonHinit: 'Ex: My friend birthday',
                    buttonKeyboardType: TextInputType.text,
                    butonColor: Theme.of(context).backgroundColor,
                    vaildators: (String? value) {
                      if (value!.isEmpty) {
                        return 'Feild is Required';
                      }

                      return null;
                    },
                    onSaveds: (String? value) {
                      widget.title = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    // emoji: widget.emoji,
                    buttonFeild: 'Emoji',
                    buttonHinit: 'Enter an emoji',
                    buttonKeyboardType: TextInputType.text,
                    textEditingController: textEditingControllerEmoji,
                    butonColor: Theme.of(context).backgroundColor,
                    vaildators: (String? value) {
                      if (value!.isEmpty) {
                        return 'Feild is Required';
                      }

                      return null;
                    },
                    onSaveds: (String? value) {
                      widget.emoji = value;
                    },

                    // iconButtonFuncation: buildEmoji,
                    icon: Icons.emoji_emotions_outlined,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    // datepicker: widget.datepicker,
                    buttonFeild: 'Date',
                    buttonHinit: 'Mar 19,2022',
                    textEditingController: textEditingController1,
                    buttonKeyboardType: TextInputType.datetime,
                    iconButtonFuncation: () => datePicker(),
                    butonColor: Theme.of(context).backgroundColor,
                    icon: Icons.calendar_today,
                    vaildators: (String? value) {
                      if (value!.isEmpty) {
                        return 'Feild is Required';
                      }

                      return null;
                    },
                    onSaveds: (String? value) {
                      widget.datepicker = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    // timepicker: widget.timepicker,
                    buttonFeild: 'Time',
                    buttonHinit: '9:00 am',
                    textEditingController: textEditingController2,
                    iconButtonFuncation: () => timePicker(),
                    buttonKeyboardType: TextInputType.datetime,
                    butonColor: Theme.of(context).backgroundColor,
                    icon: Icons.access_time_sharp,
                    vaildators: (String? value) {
                      if (value!.isEmpty) {
                        return 'Feild is Required';
                      }

                      return null;
                    },
                    onSaveds: (String? value) {
                      widget.timepicker = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  modalBottomSheet(
                    // notes: widget.notes,
                    buttonFeild: 'Notes',
                    buttonHinit: 'To Do list',
                    buttonKeyboardType: TextInputType.multiline,
                    maxLine: 4,
                    butonColor: Theme.of(context).primaryColor.withOpacity(0.4),
                    // vaildators: (String? value) {
                    //   if (value!.isEmpty) {
                    //     return 'Feild is Required';
                    //   }

                    //   return null;
                    // },
                    onSaveds: (String? value) {
                      widget.notes = value;
                    },
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
