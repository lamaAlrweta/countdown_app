import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:date_count_down/countdown.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CountDown {
  var retVal;
  String get getVlue1 {
    return retVal;
  }

  String daysTimeLeft(DateTime due, String finishedText) {
    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    int _minUntil =
        _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);
    int _secUntil = _timeUntilDue.inSeconds - (_minUntil * 60);
    // String s = _secUntil.toString().substring(_secUntil.toString().length - 2);
    // //Fixed Invalid Range Value
    String s = _secUntil.toString().length <= 2
        ? _secUntil.toString()
        : _secUntil.toString().substring(_secUntil.toString().length - 2);

    if (_daysUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = _daysUntil.toString();
    }
    return retVal;
  }

  String hourseTimeLeft(DateTime due, String finishedText) {
    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    int _minUntil =
        _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);
    int _secUntil = _timeUntilDue.inSeconds - (_minUntil * 60);
    // String s = _secUntil.toString().substring(_secUntil.toString().length - 2);
    // //Fixed Invalid Range Value
    String s = _secUntil.toString().length <= 2
        ? _secUntil.toString()
        : _secUntil.toString().substring(_secUntil.toString().length - 2);

    if (_daysUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = _hoursUntil.toString();
    }
    return retVal;
  }

  String minTimeLeft(DateTime due, String finishedText) {
    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    int _minUntil =
        _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);
    int _secUntil = _timeUntilDue.inSeconds - (_minUntil * 60);
    // String s = _secUntil.toString().substring(_secUntil.toString().length - 2);
    // //Fixed Invalid Range Value
    String s = _secUntil.toString().length <= 2
        ? _secUntil.toString()
        : _secUntil.toString().substring(_secUntil.toString().length - 2);

    if (_daysUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = _minUntil.toString();
    }
    return retVal;
  }

  String secTimeLeft(DateTime due, String finishedText) {
    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    int _minUntil =
        _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);
    int _secUntil = _timeUntilDue.inSeconds - (_minUntil * 60);
    // String s = _secUntil.toString().substring(_secUntil.toString().length - 2);
    // //Fixed Invalid Range Value
    String s = _secUntil.toString().length <= 2
        ? _secUntil.toString()
        : _secUntil.toString().substring(_secUntil.toString().length - 2);

    if (_daysUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = s.toString();
    }
    return retVal;
  }
}

class DateCountDown extends StatefulWidget {
  final String? dateTime;
  DateCountDown(this.dateTime);

  @override
  _DateCountDownState createState() => _DateCountDownState();
}

class _DateCountDownState extends State<DateCountDown> {
  String? countTime1;
  String? countTime2;
  String? countTime3;
  String? countTime4;

  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    countTime1 = CountDown().daysTimeLeft(
      DateTime.parse(widget.dateTime!),
      ("Completed"),
    );

    countTime2 = CountDown().hourseTimeLeft(
      DateTime.parse(widget.dateTime!),
      ("Completed"),
    );

    countTime3 = CountDown().minTimeLeft(
      DateTime.parse(widget.dateTime!),
      ("Completed"),
    );

    countTime4 = CountDown().secTimeLeft(
      DateTime.parse(widget.dateTime!),
      ("Completed"),
    );

    // countTime = CountDown().timeLeft(
    // DateTime.parse(widget.dateTime!), ("Completed"),
    // longDateName: true, showLabel: true);

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Counter(countTime1, AppLocalizations.of(context)!.days),
          Counter(countTime2, AppLocalizations.of(context)!.hours),
          Counter(countTime3, AppLocalizations.of(context)!.minuts),
          Counter(countTime4, AppLocalizations.of(context)!.seconds),
          // Text(
          //   countTime1!,
          //   style: Theme.of(context).textTheme.bodyText1,
          // ),
        ],
      ),
    );
  }
}

class CountdaownCard extends StatelessWidget {
  //use "gradient" instead of repeating the code

  final Gradient _gradient = LinearGradient(
    colors: [
      Color.fromRGBO(75, 83, 228, 1).withOpacity(0.5),
      Color.fromRGBO(113, 90, 206, 1).withOpacity(0.5)
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 132,
          decoration: BoxDecoration(
            gradient: _gradient,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, top: 12, right: 12, bottom: 12),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: _gradient,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: 46,
                      height: 46,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppLocalizations.of(context)!.language,
                              style: Theme.of(context).textTheme.bodyText1),
                          Text('Sep 19, 2021',
                              style: Theme.of(context).textTheme.bodyText2),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(75, 83, 228, 1),
                        Color.fromRGBO(113, 90, 206, 1)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: DateCountDown("2022-07-20 20:18:04Z"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final num;
  final numKey;

  Counter(this.num, this.numKey);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            // border: Border.all(width: 2),
            ),
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Text(
              num,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              numKey,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
