//Added some information if there are currently no assets - Gab

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/sidebar.dart';

class AssetsPage extends StatefulWidget {
  const AssetsPage({Key? key}) : super(key: key);

  @override
  _AssetsPageState createState() => _AssetsPageState();
}

class _AssetsPageState extends State<AssetsPage> {
  int myAssets = 1;

  String checkAssets(assets) {
    if (assets == 0) {
      return 'There are no Assets to show.';
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text('Assets'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              checkAssets(myAssets),
            ),
          ],
        ),
      ),
    );
  }
}
