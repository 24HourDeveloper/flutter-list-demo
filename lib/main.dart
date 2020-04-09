import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> people = [
    "Steve Jobs",
    "Bill Gates",
    "Katherine Johnson",
    "Annie Easley",
    "Mark Zuckerberg",
    "Linus Torvalds",
    "Brendan Eich",
    "Elon Musk",
    "Thomas Edison",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 30.0),
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Text(
                  people[index],
                  style: TextStyle(fontSize: 25.0),
                ),
              );
            }),
      ),
    );
  }
}
