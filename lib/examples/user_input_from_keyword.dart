import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  const UserInput({super.key});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
//use this controller to get what the user typed

  final _textController = TextEditingController();

  //store user text input into a variable
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    userPost,
                    style: const TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        //Clear whats currently in the textfield
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear)),
                  hintText: 'What\'s on your mind?'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                // Update our string variable to get the new user input
                setState(() {
                  userPost = _textController.text;
                });
              },
              child: const Text(
                'Post',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
