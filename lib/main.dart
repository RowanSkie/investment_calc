  //import 'dart:js';

import 'package:flutter/material.dart';
import 'package:investment_calc/screens/RoiCalc.dart';
import 'package:investment_calc/screens/home.dart';
import 'package:investment_calc/screens/profile.dart';
import 'package:investment_calc/screens/calc.dart';
import 'package:investment_calc/screens/settings.dart';
import 'package:investment_calc/screens/assets.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/profile': (context) => ProfilePage(),
      '/home': (context) => HomePage(),
      '/calc': (context) => InvestPage(),
      '/assets': (context) => AssetsPage(),
      '/settings': (context) => SettingsPage(),
      '/calcRoi': (context) => RoiCalc(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
