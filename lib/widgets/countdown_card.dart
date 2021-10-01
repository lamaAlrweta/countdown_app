import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/date_counters_part_widget.dart';



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


