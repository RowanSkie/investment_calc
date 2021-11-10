// The page should be able to change settings like the colors and if the privacy is through PIN or none

import 'package:flutter/material.dart';
// import 'package:investment_calc/widgets/appcolor.dart'; //uncomment once settings work

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investment Calculator',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(
          title:
              'Home'), // this is broken, need to be replaced with better usage
    );
  }
}

// so, switch will be here, default at light mode, and the vars used will be screencolorL, tabcolorL, and textcolorL