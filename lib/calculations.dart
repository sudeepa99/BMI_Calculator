import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/main_pagee.dart';
import 'package:flutter_bmi_calculator/tips1.dart';
import 'package:flutter_bmi_calculator/tips_three.dart';
import 'package:flutter_bmi_calculator/tips_two.dart';

// ignore: must_be_immutable
class Calculations extends StatelessWidget {
  double bMi;

  Calculations({super.key, required this.bMi});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 68, 67, 116),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: getBMIColor(bMi),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                        child: Text(
                          "BMI Value",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Text(
                          bMi.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const MainPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      navigateToTipsPage(context);
                    },
                    child: const Text(
                      "Tips",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getBMIColor(double bMi) {
    if (bMi < 18.5) {
      // Underweight (blue color)
      return const Color.fromARGB(255, 33, 9, 67);
    } else if (bMi >= 18.5 && bMi < 25) {
      // Normal weight (green color)
      return const Color.fromARGB(255, 16, 76, 18);
    } else {
      // Overweight (yellow color)
      return const Color.fromARGB(255, 148, 148, 23);
    }
  }

  void navigateToTipsPage(BuildContext context) {
    if (bMi < 18.5) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const TipsOne(),
        ),
      );
    } else if (bMi >= 18.5 && bMi < 25) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const TipsTwo(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const TipsThree(),
        ),
      );
    }
  }
}
