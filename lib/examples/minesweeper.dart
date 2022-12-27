import 'package:flutter/material.dart';

class MimesWeeperGame extends StatefulWidget {
  const MimesWeeperGame({super.key});

  @override
  State<MimesWeeperGame> createState() => _MimesWeeperGameState();
}

class _MimesWeeperGameState extends State<MimesWeeperGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(children: [
        //game stats and menu
        Container(
          color: Colors.grey,
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '6',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text('BOMB'),
                ],
              ),

              //Button to refresh the game

              Card(
                color: Colors.grey[700],
                child: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 40,
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '0',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text('TIME'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
