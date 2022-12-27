import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicatorDemo extends StatefulWidget {
  const PercentIndicatorDemo({super.key});

  @override
  State<PercentIndicatorDemo> createState() => _PercentIndicatorDemoState();
}

class _PercentIndicatorDemoState extends State<PercentIndicatorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 3000,
              radius: 150,
              lineWidth: 40,
              percent: 0.8,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade200,
              circularStrokeCap: CircularStrokeCap.round,
              center: const Text(
                '%80',
                style: TextStyle(fontSize: 50),
              ),
            ),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 1000,
              lineHeight: 40,
              percent: 0.8,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade200,
              barRadius: const Radius.circular(20),
            ),
          ],
        ),
      ),
    );
  }
}
