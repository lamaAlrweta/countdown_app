import 'package:flutter/material.dart';

class SettingsButtons extends StatefulWidget {
  final String textonTop;
  final Function() function1;
  final Function() function2;
  final String buttonName1;
  final String buttonName2;
  final double height;
  final double width;
  final font;
  final colorButton;

  SettingsButtons({
    this.textonTop,
    this.function1,
    this.function2,
    this.buttonName1,
    this.buttonName2,
    this.height,
    this.width,
    this.font,
    this.colorButton,
  });

  @override
  _SettingsButtonsState createState() => _SettingsButtonsState();
}

class _SettingsButtonsState extends State<SettingsButtons> {
  bool turnOnButton;
  bool thirdButton;
  @override
  void initState() {
    super.initState();
    turnOnButton = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [
          Text(widget.textonTop),
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        turnOnButton = !turnOnButton;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: turnOnButton == true
                              ? [
                                  Color.fromRGBO(75, 83, 228, 1),
                                  Color.fromRGBO(113, 90, 206, 1)
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
                        constraints:
                            BoxConstraints(maxWidth: 183.0, minHeight: 60.0),
                        alignment: Alignment.center,
                        child: Text(
                          widget.buttonName1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Montserrat-Arabic',
                            fontWeight: widget.font,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      turnOnButton = !turnOnButton;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: turnOnButton == true
                            ? [
                                Color.fromRGBO(34, 46, 62, 1),
                                Color.fromRGBO(34, 46, 62, 1),
                              ]
                            : [
                                Color.fromRGBO(75, 83, 228, 1),
                                Color.fromRGBO(113, 90, 206, 1)
                              ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55.0,
                      constraints:
                          BoxConstraints(maxWidth: 183.0, minHeight: 60.0),
                      alignment: Alignment.center,
                      child: Text(
                        widget.buttonName2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Montserrat-Arabic',
                          fontWeight: widget.font,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
