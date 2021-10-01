import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    var translation =AppLocalizations.of(context)!;
    countTime1 = CountDown().daysTimeLeft(
      DateTime.parse(widget.dateTime!),
      (translation.daysLeft),
    );

    countTime2 = CountDown().hourseTimeLeft(
      DateTime.parse(widget.dateTime!),
      (translation.hoursLeft),
    );

    countTime3 = CountDown().minTimeLeft(
      DateTime.parse(widget.dateTime!),
      (translation.minutLeft),
    );

    countTime4 = CountDown().secTimeLeft(
      DateTime.parse(widget.dateTime!),
      (translation.secondLeft),
    );

    // countTime = CountDown().timeLeft(
    // DateTime.parse(widget.dateTime!), ("Completed"),
    // longDateName: true, showLabel: true);

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Counter(countTime1, translation.days),
          Counter(countTime2, translation.hours),
          Counter(countTime3, translation.minuts),
          Counter(countTime4, translation.seconds),
          // Text(
          //   countTime1!,
          //   style: Theme.of(context).textTheme.bodyText1,
          // ),
        ],
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

class CountDown {
  var retVal;

  String daysTimeLeft(DateTime due, String finishedText) {
    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;

    if (_daysUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = _daysUntil.toString();
    } else {
      retVal = finishedText;
    }
    return retVal;
  }

  String hourseTimeLeft(DateTime due, String finishedText) {
    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);

    if (_hoursUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = _hoursUntil.toString();
    } else {
      retVal = finishedText;
    }
    return retVal;
  }

  String minTimeLeft(DateTime due, String finishedText) {
    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    int _minUntil =
        _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);

    if (_minUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = _minUntil.toString();
    } else {
      retVal = finishedText;
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

    if (_secUntil > 0) {
      //Check whether to return longDateName date name or not

      retVal = s.toString();
    } else {
      retVal = finishedText;
    }
    return retVal;
  }
}
