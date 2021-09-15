import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 115,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Language",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat-Arabic',
                          fontWeight: FontWeight.normal,
                          height: 5),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: _hasBeenPressed1
                                    ? [
                                        Color.fromRGBO(75, 83, 228, 1),
                                        Color.fromRGBO(113, 90, 206, 1)

                                        // Color.fromRGBO(75, 83, 228, 1),
                                        // Color.fromRGBO(113, 90, 206, 1)
                                      ]
                                    : [
                                        Color.fromRGBO(34, 46, 62, 1),
                                        Color.fromRGBO(34, 46, 62, 1),
                                      ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55.0,
                              constraints: BoxConstraints(
                                  maxWidth: 183.0, minHeight: 60.0),
                              alignment: Alignment.center,
                              child: Text(
                                "English",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat-Arabic',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            setState(
                                () => _hasBeenPressed1 = !_hasBeenPressed1),
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: _hasBeenPressed2
                                      ? [
                                          Color.fromRGBO(75, 83, 228, 1),
                                          Color.fromRGBO(113, 90, 206, 1)

                                          // Color.fromRGBO(75, 83, 228, 1),
                                          // Color.fromRGBO(113, 90, 206, 1)
                                        ]
                                      : [
                                          Color.fromRGBO(34, 46, 62, 1),
                                          Color.fromRGBO(34, 46, 62, 1),
                                        ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 183.0, minHeight: 60.0),
                              alignment: Alignment.center,
                              child: Text(
                                "العربية",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat-Arabic',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            setState(
                                () => _hasBeenPressed2 = !_hasBeenPressed2),
                          },
                        ),
                      ]),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Theme",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat-Arabic',
                          fontWeight: FontWeight.normal,
                          height: 2),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(34, 46, 62, 1),
                                    Color.fromRGBO(34, 46, 62, 1),
                                    // Color.fromRGBO(75, 83, 228, 1),
                                    // Color.fromRGBO(113, 90, 206, 1)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 183.0, minHeight: 60.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Light",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat-Arabic',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(34, 46, 62, 1),
                                    Color.fromRGBO(34, 46, 62, 1),
                                    // Color.fromRGBO(75, 83, 228, 1),
                                    // Color.fromRGBO(113, 90, 206, 1)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 183.0, minHeight: 60.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Dark",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat-Arabic',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Our team",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat-Arabic',
                          fontWeight: FontWeight.normal,
                          height: 2),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(34, 46, 62, 1),
                                    Color.fromRGBO(34, 46, 62, 1),
                                    // Color.fromRGBO(75, 83, 228, 1),
                                    // Color.fromRGBO(113, 90, 206, 1)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 183.0, minHeight: 60.0),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "  Lama Alrweta\n  @lamruabd",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 2,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat-Arabic',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(34, 46, 62, 1),
                                    Color.fromRGBO(34, 46, 62, 1),
                                    // Color.fromRGBO(75, 83, 228, 1),
                                    // Color.fromRGBO(113, 90, 206, 1)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 183.0, minHeight: 60.0),
                              alignment: Alignment.topLeft,
                              child: Text(
                                " Afaf Alsamel\n  @AfafAlsamel",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 2,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat-Arabic',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          )),
    );
  }
}
