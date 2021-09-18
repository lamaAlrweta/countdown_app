import 'package:flutter/material.dart';

class AddCountdownForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddCountdownFormState();
  }
}

class AddCountdownFormState extends State<AddCountdownForm> {
  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        disabledBorder: InputBorder.none,
        hintText: 'Ex: My friend birthday',
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
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    appBar: AppBar(title: Text("Form Demo")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Title",
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _buildName(),
                SizedBox(
                  height: 18,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Emoji",
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _buildName(),
                SizedBox(
                  height: 18,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Date",
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _buildName(),
                SizedBox(
                  height: 18,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Time",
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _buildName(),
                SizedBox(
                  height: 18,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Notes",
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _buildName(),
                SizedBox(
                  height: 18,
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     SizedBox(
          //       height: 100,
          //     ),
          //     _buildName(),
          //     SizedBox(
          //       height: 12,
          //     ),
          //     _buildName(),
          //     SizedBox(
          //       height: 12,
          //     ),
          //     _buildName(),
          //     SizedBox(
          //       height: 12,
          //     ),
          //     _buildName(),
          //     _buildName(),
          //     SizedBox(
          //       height: 12,
          //     ),
          //     SizedBox(height: 100),
          //     RaisedButton(
          //       child: Text(
          //         'Submit',
          //         style: TextStyle(color: Colors.purple, fontSize: 16),
          //       ),
          //       onPressed: () {
          //         if (!_formKey.currentState.validate()) {
          //           return;
          //         }

          //         _formKey.currentState.save();

          //         print(_name);

          //         //Send to API
          //       },
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}
