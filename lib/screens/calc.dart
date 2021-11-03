// for calculator

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/showstats.dart'; // temporary until dedicated widget is here, preferably called calculators.dart

class InvestPage extends StatelessWidget {
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
