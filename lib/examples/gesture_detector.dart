import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatefulWidget {
  const GestureDetectorDemo({super.key});

  @override
  State<GestureDetectorDemo> createState() => _GestureDetectorDemoState();
}

class _GestureDetectorDemoState extends State<GestureDetectorDemo> {
  int counter = 0;

  void _increaseNumber() {
    setState(() {
      counter++;
    });
  }

  void _clearField() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped ${counter.toString()} times',
              style: const TextStyle(fontSize: 24),
            ),
            GestureDetector(
              onTap: () {
                _increaseNumber();
              },
              child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.green[200],
                  child: const Text(
                    'TAP HERE',
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            GestureDetector(
              onTap: () {
                _clearField();
              },
              child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.green[200],
                  child: const Text(
                    'CLEAR',
                    style: TextStyle(fontSize: 30),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
