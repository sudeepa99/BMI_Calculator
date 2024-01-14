import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 68, 67, 116)),
        useMaterial3: true,
      ),
      home: const AnimationPage(),
    );
  }
}
