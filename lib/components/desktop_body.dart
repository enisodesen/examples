import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(child: Text('D E S K T O P')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Colors.deepPurple[400],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        'First Part',
                      ),
                      subtitle: Text('You can watch First Video'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Second Part'),
                      subtitle: Text('You can watch Second Video'),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Third Part'),
                    subtitle: Text('You can watch Third Video'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
