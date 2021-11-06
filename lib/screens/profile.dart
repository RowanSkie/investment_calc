// for main home page, unlocked one

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/showstats.dart';

class ProfilePage extends StatelessWidget {
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
