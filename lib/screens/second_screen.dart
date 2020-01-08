import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String title;
  final String textFromHomeScreen;
  SecondScreen({this.title, this.textFromHomeScreen});
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String typedText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  typedText = value;
                },
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, typedText);
                },
                color: Colors.grey,
                child: Text(
                  'goto home screen with data',
                ),
              ),
              Text(
                'text from home screen: ${widget.textFromHomeScreen}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
