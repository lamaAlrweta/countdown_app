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

  SettingsButtons({
    this.textonTop,
    this.function1,
    this.function2,
    this.buttonName1,
    this.buttonName2,
    this.height,
    this.width,
    this.font,
  });

  @override
  _SettingsButtonsState createState() => _SettingsButtonsState();
}

class _SettingsButtonsState extends State<SettingsButtons> {
  bool hasBeenPressed1 = false;
  bool hasBeenPressed2 = false;
  bool turnOnButton = true;
  bool turnOffButton = true;

  void turnOn() {
    setState(() {
      turnOnButton = false;
      turnOffButton = false;
    });
  }

  void turnOff() {
    setState(() {
      turnOnButton = true;
      turnOffButton = true;
    });
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
                    onPressed: () => {turnOnButton ? turnOn : null},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
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
                    //   hasBeenPressed1 = !hasBeenPressed1
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  onPressed: () => {turnOffButton ? null : turnOff},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
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
