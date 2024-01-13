import 'package:flutter/material.dart';

class tipsTwo extends StatelessWidget {
  const tipsTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Focus on a balanced diet with nutrient-rich foods."),
          Text(
              "Include more protein, healthy fats, and complex carbohydrates."),
          Text(
              "Consider consulting a nutritionist for a personalized meal plan."),
        ],
      ),
    );
  }
}
