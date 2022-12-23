import 'dart:async';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int timeLeft = 5;
  void _startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          timer.cancel();
        }
      });
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
              timeLeft == 0 ? 'DONE' : timeLeft.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: () {
                _startCountDown();
              },
              color: Colors.deepPurple,
              child: const Text(
                "S T A R T",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
