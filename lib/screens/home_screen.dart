import '../widgets/countdown_card.dart';
import '../widgets/customized_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: CountdaownCard(),
      ),
    );
  }
}
