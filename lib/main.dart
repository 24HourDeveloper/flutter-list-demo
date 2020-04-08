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
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: people
              .map((person) => Container(
                    margin: EdgeInsets.only(top: 30.0),
                    padding: EdgeInsets.symmetric(vertical: 40.0),
                    child: Text(
                      person,
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
