import 'package:flutter/material.dart';
import 'package:math_app1/screens/main_screen.dart';

class MathApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math',
      home: Home(),
    );
  }
}
