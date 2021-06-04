import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Column(
        children: [
          Text(_name),
          TextField(
            onChanged: (String value) => setState(() => _name = value),
            onSubmitted: (value) => {},
          ),
        ],
      ),
    );
  }
}
