import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/main_pagee.dart';
import 'package:flutter_bmi_calculator/tips1.dart';

// ignore: must_be_immutable
class Calculations extends StatelessWidget {
  double bMi;
  Calculations({super.key, required this.bMi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(135, 130, 153, 4),
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
                    )),
                const SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const tipsOne(),
                        ),
                      );
                    },
                    child: const Text(
                      "Tips",
                      style: TextStyle(fontSize: 20.0),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color getBMIColor(double bMi) {
    if (bMi < 18.5) {
      // Underweight (blue color)
      return const Color.fromARGB(255, 150, 10, 113);
    } else if (bMi >= 18.5 && bMi < 25) {
      // Normal weight (green color)
      return const Color.fromARGB(255, 5, 111, 9);
    } else {
      // Overweight (yellow color)
      return const Color.fromARGB(255, 190, 2, 2);
    }
  }

  // Object getTips(double bMi) {
  //   if (bMi < 18.5) {
  //     // Underweight (blue color)
  //     return const tipsOne();
  //   } else if (bMi >= 18.5 && bMi < 25) {
  //     // Normal weight (green color)
  //     return tipsTwo();
  //   } else {
  //     // Overweight (yellow color)
  //     return tipsThree();
  //   }
  // }
}
