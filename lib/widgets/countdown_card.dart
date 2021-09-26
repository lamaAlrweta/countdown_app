import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                          Text(
                            AppLocalizations.of(context)!.language,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat-Arabic',
                            ),
                          ),
                          Text(
                            'Sep 19, 2021',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat-Arabic',
                            ),
                          ),
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
                        counter('14', AppLocalizations.of(context)!.days),
                        counter('15', AppLocalizations.of(context)!.hours),
                        counter('16', AppLocalizations.of(context)!.minuts),
                        counter('17', AppLocalizations.of(context)!.seconds),
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

class counter extends StatelessWidget {
  final num;
  final numKey;

  counter(this.num, this.numKey);

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
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat-Arabic'),
            ),
            Text(
              numKey,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat-Arabic',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
