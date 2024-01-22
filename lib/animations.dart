import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/main_pagee.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<AnimationPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 7)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPage(),
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 67, 116),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 150, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "BMI Calculator",
                  style: TextStyle(
                    color: Color.fromARGB(255, 197, 92, 0),
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 140.0),
                    child: Lottie.asset(
                      "assets/Animation - 1705216548922.json",
                      animate: true,
                      repeat: true,
                      width: 180.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
