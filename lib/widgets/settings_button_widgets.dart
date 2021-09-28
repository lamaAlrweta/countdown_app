import 'package:flutter/material.dart';

class SettingsButtons extends StatelessWidget {
  final String? textonTop;
  final Function()? function1;
  final Function()? function2;
  final Widget? gradientcontainer;
  final Widget? gradientcontainer2;

  SettingsButtons({
    this.textonTop,
    this.function1,
    this.function2,
    this.gradientcontainer,
    this.gradientcontainer2,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          textonTop ?? "title",
          style: Theme.of(context).textTheme.body1,
        ),
        SizedBox(height: 10),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Flexible(
                child: RaisedButton(
                    onPressed: function2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: gradientcontainer),
              ),
              SizedBox(width: 10),
              RaisedButton(
                  onPressed: function1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: gradientcontainer2),
            ],
          ),
        ),
      ]),
    );
  }
}
