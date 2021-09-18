import 'package:flutter/material.dart';

class AddCountdownForm extends StatefulWidget {
  final String userInput;
  final String buttonFeild;
  final String buttonHinit;
  final buttonKeyboardType;
  final contentPaddingText;
  final icon;

  AddCountdownForm(
      {this.userInput,
      this.buttonFeild,
      this.buttonHinit,
      this.buttonKeyboardType,
      this.contentPaddingText,
      this.icon});
  @override
  _AddCountdownFormState createState() => _AddCountdownFormState();
}

class _AddCountdownFormState extends State<AddCountdownForm> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: [
            // SafeArea(
            //   child: Scaffold(
            //     body: SingleChildScrollView(
            //       child: Container(
            //         margin: EdgeInsets.all(24),
            //         child: Form(
            //           key: formKey,
            //           child: Column(
            // SizedBox(
            //   height: 50,
            // ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.buttonFeild,
                style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 12,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              keyboardType: widget.buttonKeyboardType,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 15),
                  // child: Align(
                  //   alignment: Alignment.centerLeft,
                  child: Icon(
                    widget.icon,
                    color: Colors.white,
                  ),
                  // ),
                ),
                contentPadding: widget.contentPaddingText,
                // new EdgeInsets.symmetric(
                //     vertical: 25.0, horizontal: 10.0),
                disabledBorder: InputBorder.none,
                hintText: widget.buttonHinit,
                hintStyle: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 13,
                  fontFamily: 'Montserrat-Arabic',
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Theme.of(context).backgroundColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Feild is Required';
                }

                return null;
              },
              onSaved: (String value) {
                // widget.userInput = value;
              },
            ),
            // SizedBox(
            //   height: 18,
            // ),
            // SizedBox(height: 100),
            // RaisedButton(
            //     child: Text(
            //       'Submit',
            //       style: TextStyle(color: Colors.purple, fontSize: 16),
            //     ),
            //     onPressed: () {
            //       if (!formKey.currentState.validate()) {
            //         return;
            //       }

            //       formKey.currentState.save();
            //     }),
            //   Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "Emoji",
            //       style: TextStyle(
            //         color: Theme.of(context).textSelectionColor,
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            //   _buildName(),
            //   SizedBox(
            //     height: 18,
            //   ),
            //   Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "Date",
            //       style: TextStyle(
            //         color: Theme.of(context).textSelectionColor,
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            //   _buildName(),
            //   SizedBox(
            //     height: 18,
            //   ),
            //   Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "Time",
            //       style: TextStyle(
            //         color: Theme.of(context).textSelectionColor,
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            //   _buildName(),
            //   SizedBox(
            //     height: 18,
            //   ),
            //   Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "Notes",
            //       style: TextStyle(
            //         color: Theme.of(context).textSelectionColor,
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            //   _buildName(),
            //   SizedBox(
            //     height: 18,
            //   ),
            //   SizedBox(height: 100),
            // ],
          ],
        ),
      ),
    );
  }
}
