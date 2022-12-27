import 'package:examples/posts/post_1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../posts/post_2.dart';
import '../posts/post_3.dart';

class PageSliderDemos extends StatelessWidget {
  PageSliderDemos({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: Center(
              child: PageView(controller: _controller, children: const [
                Post1(),
                Post2(),
                Post3(),
              ]),
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade300,
              verticalOffset: 20,
            ),
          ),
        ],
      ),
    );
  }
}
