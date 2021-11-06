// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:investment_calc/main.dart';

class RoiCalc extends StatefulWidget {
  const RoiCalc({Key? key}) : super(key: key);

  @override
  _RoiCalcState createState() => _RoiCalcState();
}

class _RoiCalcState extends State<RoiCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Calculator ROI"),
      ),
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: (Text(
                    "Basic Calculator  ",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/calc');
                  },
                ),
                Text(
                  "/  Investment",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.redAccent),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              child: Column(
                children: <Widget>[
                  Text("Return on Investment",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                      )),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.white38),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Amount At Maturity',
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.white38),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Investment Period',
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.white38),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Interest Rate %',
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.white38),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'ROI',
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: (Text('CALCULATE')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
