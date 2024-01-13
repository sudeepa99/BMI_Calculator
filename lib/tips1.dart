import 'package:flutter/material.dart';

class tipsOne extends StatelessWidget {
  const tipsOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BulletedList(),
    );
  }
}

class BulletedList extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.brightness_1), // Use a small circle as a bullet
          title: Text(items[index]),
        );
      },
    );
  }
}
