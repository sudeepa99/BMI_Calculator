import 'package:flutter/material.dart';
import "package:flutter_bmi_calculator/constants.dart";
import 'package:flutter_bmi_calculator/calculations.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 60;

  late double bmi = calculateBMI(height: height, weight: weight);

  String gender = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 68, 67, 116),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('male');
                      setState(() {
                        gender = "M";
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        color: gender == 'M'
                            ? const Color.fromARGB(255, 197, 92, 0)
                            : const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 120),
                            Text("Male",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  GestureDetector(
                    onTap: () {
                      print("female");
                      setState(() {
                        gender = "F";
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                          color: gender == 'F'
                              ? const Color.fromARGB(255, 197, 92, 0)
                              : const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(25.0)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 120,
                          ),
                          Text("Female",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255))),
                        Text(
                          "$height",
                          style: TextStyle(color: textColor, fontSize: 50.0),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(
                                Icons.remove,
                                size: 45,
                              ),
                            ),
                            const SizedBox(
                              width: 25.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height < 250) height++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(
                                Icons.add_rounded,
                                size: 45,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Weight",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255))),
                        Text(
                          "$weight",
                          style: TextStyle(color: textColor, fontSize: 50.0),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 30) weight--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(
                                Icons.remove,
                                size: 45,
                              ),
                            ),
                            const SizedBox(
                              width: 25.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 220) weight++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(
                                Icons.add_rounded,
                                size: 45,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              /*Text(
                  bmi.toStringAsFixed(2),
                  style: TextStyle(
                    color: getBMIColor(bmi),
                    fontSize: 40.0, // Adjust the font size as needed
                    fontWeight: FontWeight.bold,
                  ),
                ),*/

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calculations(
                          bMi: bmi,
                        ),
                      ));
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 197, 92, 0),
                      ),
                    ),
                  ),
                ),
              ),
              /*ElevatedButton(
              onPressed: () {
                print("Calculate button pressed");
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Calculations(),
                  ),
                );
              },
              child: const Text("Calculate"),
            )*/
            ],
          ),
        ),
      ),
    );
  }

  double calculateBMI({required int height, required int weight}) {
    return (weight / (height * height)) * 10000;
  }
}
