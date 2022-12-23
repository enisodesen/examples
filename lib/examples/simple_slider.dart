// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class SimpleSliderDemo extends StatefulWidget {
  const SimpleSliderDemo({super.key});

  @override
  State<SimpleSliderDemo> createState() => _SimpleSliderDemoState();
}

class _SimpleSliderDemoState extends State<SimpleSliderDemo> {
  //Create variables
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_currentValue.toString()),
          Slider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 10,
              label: _currentValue.toString(),
              activeColor: Colors.red,
              thumbColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              }),
        ],
      ),
    );
  }
}
