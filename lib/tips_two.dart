import 'package:flutter/material.dart';

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
