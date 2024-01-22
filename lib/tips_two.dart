import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/main_pagee.dart';

class TipsTwo extends StatelessWidget {
  const TipsTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BulletedList(),
    );
  }
}

class BulletedList extends StatelessWidget {
  final List<String> items = [
    'Focus on a balanced diet with nutrient-rich foods.',
    'Include more protein, healthy fats, and complex carbohydrates.',
    'Consider consulting a nutritionist for a personalized meal plan.',
    // Add more items as needed
  ];

  BulletedList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(
              40, 100, 40, 16), // Adjust bottom padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  shrinkWrap: true, // Added to prevent height issues
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.brightness_1),
                      title: Text(
                        items[index],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 1, 18, 31),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                  height:
                      16), // Adjust the space between the ListView and the button
              Padding(
                padding: const EdgeInsets.only(
                    left: 90, right: 90, top: 10, bottom: 10),
                child: SizedBox(
                  width: 20,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage()));
                    },
                    child: const Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 197, 92, 0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
