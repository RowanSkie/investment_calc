// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/sidebar.dart';
import 'package:flutter/services.dart';

class RoiCalc extends StatefulWidget {
  const RoiCalc({Key? key}) : super(key: key);

  @override
  _RoiCalcState createState() => _RoiCalcState();
}

class _RoiCalcState extends State<RoiCalc> {
  TextEditingController maturity = TextEditingController();
  TextEditingController initial = TextEditingController();
  TextEditingController roi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: SideBar(),
      appBar: AppBar(
        title: const Text("Investment Calculator"),
        backgroundColor: Colors.red,
      ),
      //backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
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
                    "Investment Computation",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.redAccent),
                  ),
                ],
              ),
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
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 25),
                  Text(
                    "Total Amount Returned ",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: maturity,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Enter Amount',
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Amount Invested ",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: initial,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Enter Amount',
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  /* TextField(
                    textAlign: TextAlign.center,
                    controller: period,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.white38),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Investment Period (yrs)',
                    ),
                    style: TextStyle(color: Colors.white),
                  ), */
                  SizedBox(height: 20),
                  Text(
                    "ROI % ",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: roi,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'ROI',
                    ),
                    style: TextStyle(color: Colors.red),
                    readOnly: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        //Returned amount / investment = roi
                        roi.text = ((double.parse(maturity.text) /
                                    double.parse(initial.text)) *
                                100)
                            .toString();
                      },
                      child: (Text('CALCULATE'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculation(
      TextEditingController maturity, TextEditingController initial,
      [TextEditingController? period]) {
    int after = int.parse(maturity.text);
    int before = int.parse(initial.text);
    int yrs = int.parse(period!.text);

    double power = pow(1, yrs) - 1;
    double x = (after / before) + power;
    roi.text = x.toString();
    print(roi);
  }
}
