import 'package:flutter/material.dart';

class DatePickDemo extends StatefulWidget {
  const DatePickDemo({super.key});

  @override
  State<DatePickDemo> createState() => _DatePickDemoState();
}

class _DatePickDemoState extends State<DatePickDemo> {
  late DateTime _dateTime = DateTime.now();

  void _showDaterPicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _dateTime.toString(),
            style: const TextStyle(fontSize: 20),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: _showDaterPicker,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Choose Date',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
