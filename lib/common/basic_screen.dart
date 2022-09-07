import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  final Widget child;
  const BasicScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: child,
    );
  }
}