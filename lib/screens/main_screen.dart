import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_app1/screens/progress.dart';
import 'package:math_app1/screens/start.dart';
import 'package:math_app1/screens/test.dart';

import 'lessons/lessons.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [Start(), Lessons(), Test(), Progress()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF708090),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'Самоучитель математики',
          style: TextStyle(fontSize: 30.00, color: Colors.black),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
