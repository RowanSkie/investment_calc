// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SecondApp2 extends StatelessWidget {
  const SecondApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoiCalc(),
    ); // MaterialApp
  }
}

class RoiCalc extends StatefulWidget {
  const RoiCalc({Key? key}) : super(key: key);

  @override
  _RoiCalcState createState() => _RoiCalcState();
}

class _RoiCalcState extends State<RoiCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator ROI"),
      ),
      backgroundColor: Colors.white38,
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Text(
                "Basic Calculator  ",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              Text(
                "/  Investment",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.redAccent[400]),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter amount",
                      labelText: 'Amount of Shares',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter amount",
                      labelText: 'Value per Share',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter amount",
                      labelText: 'Number of Years: ',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter amount",
                      labelText: 'Interest Rate %: ',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter amount",
                      labelText: 'ROI %: ',
                    ),
                  ),
                  ButtonBar(),
                  Text("Calculate")
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
