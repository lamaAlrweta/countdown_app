import 'package:flutter/material.dart';

class CountdaownCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        // borderRadius: BorderRadius.all(
        //   Radius.circular(12),
        // ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 132,
          margin: EdgeInsets.all(16),
          //padding: EdgeInsets.all(12),

          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, top: 12, right: 12, bottom: 12),
                child: Row(
                  children: [
                    Container(
                      // alignment: Alignment.topLeft,
                      color: Colors.black,
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
                            ),
                          ),
                          Text(
                            'Sep 19, 2021',
                            style: TextStyle(
                              fontSize: 14,
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
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(width: 2),
                                ),
                            padding: EdgeInsets.all(2),
                            child: Column(
                              children: [
                                Text(
                                  '14',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Days',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(width: 2),
                                ),
                            padding: EdgeInsets.all(2),
                            child: Column(
                              children: [
                                Text(
                                  '14',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Days',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(width: 2),
                                ),
                            padding: EdgeInsets.all(2),
                            child: Column(
                              children: [
                                Text(
                                  '14',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Days',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(width: 2),
                                ),
                            padding: EdgeInsets.all(2),
                            child: Column(
                              children: [
                                Text(
                                  '14',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Days',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
    // return Container(
    //   height: 123 ,
    //   width: 327,
    //   color: Colors.amber,
    //   child: Text('hi',style: TextStyle(fontSize: 16),),
    // );
  }
}
