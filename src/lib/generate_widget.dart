import 'package:flutter/material.dart';
import 'global.dart';
import 'dart:developer';
import 'dart:math';

class GenerateFoodWidget extends StatefulWidget {
  const GenerateFoodWidget({super.key});

  @override
  State<GenerateFoodWidget> createState() => _GenerateFoodState();
}

class _GenerateFoodState extends State<GenerateFoodWidget> {
  Food selectedFood = Food("NULL", [], "NULL", "NULL");

  bool _contain(Food currFood) {
    for (var i = 0; i < globalFilters.length; i++) {
      if (!currFood.type.contains(globalFilters[i])) {
        return false;
      }
    }
    return true;
  }

  void _selectRandomFood() {
    setState(() {
      List<Food> filteredFoods = globalFilters.length == 0
          ? foods
          : foods.where((currFood) => _contain(currFood)).toList();
      Random rand = new Random();
      int next = rand.nextInt(filteredFoods.length);
      selectedFood = filteredFoods.elementAt(next);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            selectedFood.name,
            style: TextStyle(fontSize: 20),
          ),
          TextButton(onPressed: _selectRandomFood, child: Text("Generate")),
        ]);
  }
}
