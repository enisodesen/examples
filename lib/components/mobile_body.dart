import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Center(child: Text('M O B I L E')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                height: 250,
                color: Colors.orange,
              ),
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
