import 'package:flutter/material.dart';

class modalBottomSheet extends StatefulWidget {
  final String? buttonFeild;
  final String? buttonHinit;
  final buttonKeyboardType;
  final contentPaddingText;
  final icon;
  final butonColor;
  final iconButtonFuncation;
  final maxLine;
  final textEditingController;
  final onSaveds;
  final vaildators;

  modalBottomSheet({
    this.buttonFeild,
    this.buttonHinit,
    this.buttonKeyboardType,
    this.contentPaddingText,
    this.icon,
    this.butonColor,
    this.iconButtonFuncation,
    this.maxLine,
    this.textEditingController,
    this.onSaveds,
    this.vaildators,
  });
  @override
  _modalBottomSheetState createState() => _modalBottomSheetState();
}

class _modalBottomSheetState extends State<modalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Form(
      //   key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: TextDirection.ltr,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.buttonFeild ?? 'text',
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
            controller: widget.textEditingController,
            keyboardType: widget.buttonKeyboardType,
            maxLines: widget.maxLine,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: widget.iconButtonFuncation,
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
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: widget.vaildators,
            onSaved: widget.onSaveds,
          ),
        ],
      ),
    );
  }
}
