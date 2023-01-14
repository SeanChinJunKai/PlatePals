import 'package:flutter/material.dart';
import 'global.dart';
import 'dart:math';

class GenerateFoodWidget extends StatefulWidget {
  const GenerateFoodWidget({super.key});

  @override
  State<GenerateFoodWidget> createState() => _GenerateFoodState();
}

class _GenerateFoodState extends State<GenerateFoodWidget> {
  Food selectedFood = Food("MULL", FoodType.Default, "NULL", "NULL");

  void _selectRandomFood() {
    setState(() {
      List<Food> filteredFoods = globalFilters.length == 0
          ? foods
          : foods
              .where((currFood) => currFood.type.contains([globalFilters]))
              .toList();

      selectedFood = filteredFoods[Random().nextInt(filteredFoods.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            selectedFood.name ?? 'Press the button to select a food',
            style: TextStyle(fontSize: 20),
          ),
        ]);
  }
}
