import 'package:flutter/material.dart';

class AddCountdownForm extends StatefulWidget {
  final String userInput;
  final String buttonFeild;
  final String buttonHinit;
  final buttonKeyboardType;
  final contentPaddingText;
  final icon;
  final buttonColor;

  AddCountdownForm(
      {this.userInput,
      this.buttonFeild,
      this.buttonHinit,
      this.buttonKeyboardType,
      this.contentPaddingText,
      this.icon,
      this.buttonColor});
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
                  child: Icon(
                    widget.icon,
                    color: Colors.white,
                  ),
                ),
                contentPadding: widget.contentPaddingText,
                disabledBorder: InputBorder.none,
                hintText: widget.buttonHinit,
                hintStyle: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 13,
                  fontFamily: 'Montserrat-Arabic',
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: widget.buttonColor,
                //Theme.of(context).backgroundColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
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
          ],
        ),
      ),
    );
  }
}
