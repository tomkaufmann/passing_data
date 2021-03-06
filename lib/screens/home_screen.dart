import 'package:flutter/material.dart';
import 'second_screen.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  HomeScreen({this.title});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String typedText = '';
  String textFromSecondScreen = '';
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
                onPressed: () async {
                  String text = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SecondScreen(
                            title: widget.title, textFromHomeScreen: typedText);
                      },
                    ),
                  );
                  setState(() {
                    textFromSecondScreen = text;
                  });
                },
                color: Colors.grey,
                child: Text(
                  'goto second screen with data',
                ),
              ),
              Text(
                'text from second screen: $textFromSecondScreen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
