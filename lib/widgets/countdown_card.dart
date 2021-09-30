import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:date_count_down/countdown.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DateCountDown extends StatefulWidget {
  final String? dateTime;
  DateCountDown(this.dateTime);

  @override
  _DateCountDownState createState() => _DateCountDownState();
}

class _DateCountDownState extends State<DateCountDown> {
  Widget countTime; 

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
    countTime = CountDown().timeLeft(
        DateTime.parse(widget.dateTime!), ("Completed"),
        longDateName: true, showLabel: true);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            // border: Border.all(width: 2),
            ),
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            countTime
            // Text(
            //   countTime,
            //   style: Theme.of(context).textTheme.bodyText1,
            // ),
          ],
        ),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DateCountDown("2022-07-20 20:18:04Z"),
                        // Counter('14', AppLocalizations.of(context)!.days),
                        // Counter('15', AppLocalizations.of(context)!.hours),
                        // Counter('16', AppLocalizations.of(context)!.minuts),
                        // Counter('17', AppLocalizations.of(context)!.seconds),
                      ],
                    ),
                  ),
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
      padding: const EdgeInsets.all(8.0),
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
