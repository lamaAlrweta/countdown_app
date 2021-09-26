import 'package:flutter/material.dart';

import 'screens/modal_bottom_sheet_screen.dart';

class Test extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Center(child: RaisedButton(onPressed: () {
          showModalBottomSheet<dynamic>(
            isScrollControlled: true,
            context: context,
            builder: (context) => Container(
                height: MediaQuery.of(context).size.height * 0.90,
                child: modalBottomSheetScreen()),
          );
        })));
  }
}
