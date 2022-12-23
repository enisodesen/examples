import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            //Closer to the back of the phone
            Container(
              height: 300,
              width: 300,
              color: Colors.blue[200],
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue[600],
            ),

            ///Closer to the back of the phone
          ],
        ),
      ),
    );
  }
}
