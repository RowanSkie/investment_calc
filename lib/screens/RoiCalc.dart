// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/sidebar.dart';

class RoiCalc extends StatefulWidget {
  const RoiCalc({Key? key}) : super(key: key);

  @override
  _RoiCalcState createState() => _RoiCalcState();
}

class _RoiCalcState extends State<RoiCalc> {
  @override
  TextEditingController maturity = TextEditingController();
  TextEditingController investmentperiod = TextEditingController();
  TextEditingController interest = TextEditingController();
  TextEditingController roi = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: SideBar(),
      appBar: AppBar(
        title: const Text("Investment Calculator"),
        backgroundColor: Colors.red,
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
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/calc');
                  },
                ),
                Text(
                  "/ Investment Computation",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.redAccent),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Text("Return on Investment",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                      )),
                  SizedBox(height: 20),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: maturity,
                    keyboardType: TextInputType.number,
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
                    textAlign: TextAlign.center,
                    controller: investmentperiod,
                    keyboardType: TextInputType.number,
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
                    textAlign: TextAlign.center,
                    controller: interest,
                    keyboardType: TextInputType.number,
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
                    textAlign: TextAlign.center,
                    controller: roi,
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
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //Testings di ko alam formula eh nYAAHAHAH
                      print(maturity.text);
                      print(investmentperiod.text);
                      print(interest.text);
                      print(roi.text);
                      roi.text = (int.parse(maturity.text) +
                              int.parse(investmentperiod.text))
                          .toString();
                    },
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
