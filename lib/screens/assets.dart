// for asset overview

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/showstats.dart'; // temporary until dedicated widget is here, preferably called assetdatabase.dart
import 'package:investment_calc/widgets/sidebar.dart';

class AssetsPage extends StatelessWidget {
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

