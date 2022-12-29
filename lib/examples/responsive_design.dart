import 'package:examples/components/desktop_body.dart';
import 'package:examples/components/mobile_body.dart';
import 'package:examples/components/responsive_layout.dart';
import 'package:flutter/material.dart';

class ResponsiveDesignDemo extends StatefulWidget {
  const ResponsiveDesignDemo({super.key});

  @override
  State<ResponsiveDesignDemo> createState() => _ResponsiveDesignDemoState();
}

class _ResponsiveDesignDemoState extends State<ResponsiveDesignDemo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
          mobileBody: MyMobileBody(), desktopBody: MyDesktopBody()),
    );
  }
}
