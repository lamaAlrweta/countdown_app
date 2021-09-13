import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget {

  final title;
  final hint;
  CustomAppbar(this.title, this.hint);

  @override
  Widget build(BuildContext context) {
    return 
   Container(
         padding: EdgeInsets.all(16),
         child: Container(
           height: 100,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
               Expanded(child: Text(hint)),
             ],
           ),
         ),
       
);
  }
}