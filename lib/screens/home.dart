// for main home page

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/showstats.dart';

class MyApp extends StatelessWidget {
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
