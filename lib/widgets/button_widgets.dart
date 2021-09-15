import 'package:flutter/material.dart';

class YourWidgetwithTopText extends StatelessWidget {
  final String textonTop;
  final Function() function1;
  final Function() function2;
  final String buttonName1;
  final String buttonName2;
  final double height;
  final double width;

  const YourWidgetwithTopText(
      {this.textonTop,
      this.function1,
      this.function2,
      this.buttonName1,
      this.buttonName2,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [
          Text(textonTop),
          SizedBox(height: 10),
          Container(
              child: Row(children: [
            GestureDetector(
                onTap: function1,
                child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text(buttonName1)))),
            SizedBox(width: 10),
            GestureDetector(
                onTap: function2,
                child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text(buttonName2)))),
          ])),
        ]));
  }
}
