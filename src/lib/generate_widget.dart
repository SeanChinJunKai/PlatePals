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

  void _selectRandomFood() {
    setState(() {
      List<Food> filteredFoods = globalFilters.length == 0
          ? foods
          : foods
              .where((currFood) => currFood.type.contains([globalFilters]))
              .toList();

      Random rand = new Random();
      print(filteredFoods.length);
      int next = rand.nextInt(filteredFoods.length);
      print(next);
      selectedFood = filteredFoods.elementAt(next);
      print(selectedFood.name);
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
