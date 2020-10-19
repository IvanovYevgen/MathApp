import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_app1/screens/progress.dart';
import 'package:math_app1/screens/start.dart';
import 'package:math_app1/screens/test.dart';

import 'SizeConfig.dart';
import 'lessons/lessons.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

// 90caf9
class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [Start(), Lessons(), Test(), Progress()];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF7de8ea),
      appBar: AppBar(
        backgroundColor: Color(0xFFdce0cd),
        title: Text(
          'Самоучитель математики',
          style: TextStyle(
              fontSize: SizeConfig.safeBlockVertical * 4.55,
              color: Colors.black),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF003700),
        unselectedItemColor: Color(0xFF67a030),
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant_photo),
            title: Text('Старт'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text('Уроки'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_all), title: Text('Тесты')),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_made), title: Text('Ваш прогресс'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
