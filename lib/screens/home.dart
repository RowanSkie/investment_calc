// for main home page, locked one

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/showstats.dart';
import 'package:investment_calc/widgets/sidebar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
