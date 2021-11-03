// set up privacy and other minor stuff

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/showstats.dart'; // temporary until dedicated widget is here, preferably called showsettings.dart

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investment Calculator',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}
