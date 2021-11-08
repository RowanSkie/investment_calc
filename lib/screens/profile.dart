// for main home page, unlocked one

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/sidebar.dart';

class ProfilePage extends StatelessWidget {
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
