import 'package:flutter/material.dart';

class modalBottomSheet extends StatefulWidget {
  final String userInput;
  final String buttonFeild;
  final String buttonHinit;
  final buttonKeyboardType;
  final contentPaddingText;
  final icon;
  final butonColor;
  final IconButtonFuncation;

  modalBottomSheet(
      {this.userInput,
      this.buttonFeild,
      this.buttonHinit,
      this.buttonKeyboardType,
      this.contentPaddingText,
      this.icon,
      this.butonColor,
      this.IconButtonFuncation});
  @override
  _modalBottomSheetState createState() => _modalBottomSheetState();
}

class _modalBottomSheetState extends State<modalBottomSheet> {
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
                suffixIcon: IconButton(
                    onPressed: widget.IconButtonFuncation,
                    icon: Icon(
                      widget.icon,
                      color: Colors.white,
                    )),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 15),
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
                fillColor: widget.butonColor,
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
