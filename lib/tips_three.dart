import 'package:flutter/material.dart';

class TipsThree extends StatelessWidget {
  const TipsThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BulletedList(),
    );
  }
}

class BulletedList extends StatelessWidget {
  final List<String> items = [
    'Focus on regular aerobic exercises like walking or cycling.',
    'Choose a balanced diet with lean proteins, whole grains, fruits, and vegetables',
    'Consult with a healthcare professional for personalized weight management guidance.',

    // Add more items as needed
  ];

  BulletedList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 100, 40, 100),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white,
            ),
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(
                      Icons.brightness_1), // Use a small circle as a bullet
                  title: Text(
                    items[index],
                    style: const TextStyle(
                        color: Color.fromARGB(255, 1, 18, 31),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
