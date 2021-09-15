import 'package:flutter/material.dart';

class CountdaownCard extends StatelessWidget {
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
          color: Theme.of(context).primaryColor.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, top: 12, right: 12, bottom: 12),
                child: Row(
                  children: [
                    Container(
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                      width: 46,
                      height: 46,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My birthday',
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
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        counter('14', 'Days'),
                        counter('15', 'Hours'),
                        counter('16', 'Minuts'),
                        counter('17', 'Seconds'),
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
