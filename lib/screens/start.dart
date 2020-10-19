import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: SizeConfig.safeBlockVertical * 45.5,
        width: SizeConfig.safeBlockHorizontal * 72.99,
        child: Center(
          child: Text(
            'Изучай уроки. Проходи тесты. Следи за прогрессом.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: SizeConfig.safeBlockVertical * 3,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
