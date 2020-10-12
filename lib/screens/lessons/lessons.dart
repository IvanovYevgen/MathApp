import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bloc/math_page.dart';

class Lessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 300.00,
            width: 300.00,
            child: Center(
              child: MathPage(),
              // Text(
              //   'Урок номер 1',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(fontSize: 20.00, color: Colors.black),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
