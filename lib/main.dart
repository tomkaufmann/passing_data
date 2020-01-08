import 'package:flutter/material.dart';
import 'package:passing_data/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Handler',
      theme: ThemeData.light(),
      home: HomeScreen(title: 'Passing data between screens'),
    );
  }
}
