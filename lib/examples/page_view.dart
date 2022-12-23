import 'package:examples/posts/post_1.dart';
import 'package:flutter/material.dart';

import '../posts/post_2.dart';
import '../posts/post_3.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }
}
