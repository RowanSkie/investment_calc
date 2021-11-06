// for main home page, locked one

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/showstats.dart';

class HomePage extends StatelessWidget {
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
