import 'package:countdown/widgets/countdown_card.dart';
import '../widgets/customized_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), 
        child: CustomAppbar('Countdowns', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
                    
                
            ),
        
      body: SingleChildScrollView(
        child: CountdaownCard(),
      ),
    );
  }
}
