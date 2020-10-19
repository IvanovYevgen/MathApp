import 'package:flutter/material.dart';

import 'SizeConfig.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFccdb86),
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 300.00,
        width: 300.00,
        child: Center(
          child: Text(
            'Ваш прогресс на данное время составляет: ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.00, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
