import 'package:flutter/material.dart';

class AnimatedIconsDemo extends StatefulWidget {
  const AnimatedIconsDemo({super.key});

  @override
  State<AnimatedIconsDemo> createState() => _AnimatedIconsDemoState();
}

class _AnimatedIconsDemoState extends State<AnimatedIconsDemo>
    with SingleTickerProviderStateMixin {
  //Create a an,mation controller
  late AnimationController _animationController;

  //initialize the animation controller

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  //method for when user tabs
  bool videoPlaiyng = false;
  void _iconTapped() {
    if (videoPlaiyng == false) {
      _animationController.forward();
      videoPlaiyng = true;
    } else {
      _animationController.reverse();
      videoPlaiyng = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _iconTapped();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
            size: 150,
          ),
        ),
      ),
    );
  }
}
