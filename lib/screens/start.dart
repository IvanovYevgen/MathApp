import 'package:flutter/material.dart';
class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
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
            'Изучай уроки. Проходи тесты. Следи за прогрессом.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.00, color: Colors.black),
          ),
        ),
      ),
    );
  }
}




