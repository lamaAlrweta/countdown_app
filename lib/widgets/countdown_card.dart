import 'package:flutter/material.dart';

class CountdaownCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      
       Container(
         margin: EdgeInsets.all(16),
         child: ClipRRect(
           
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 132,
//margin: EdgeInsets.all(16),
            //padding: EdgeInsets.all(12),

            color:Theme.of(context).primaryColor.withOpacity(0.4) ,
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
                                 fontFamily: 'Montserrat-Arabic',
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
                    color: Theme.of(context).primaryColor,
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
   
  }
}
