import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World!"),
        ),
        body: Center(
          child: Heading(
            text: "Hello World Text!",
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String? text;

  Heading({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }
}
