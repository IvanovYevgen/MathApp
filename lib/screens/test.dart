import 'package:flutter/material.dart';
class Test extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 300.00,
        width: 300.00,
        child: Center(
          child: Text(
            'Тест номер 1',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.00, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
