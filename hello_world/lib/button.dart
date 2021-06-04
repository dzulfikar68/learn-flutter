import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () => {},
            child: Text("Tombol"),
          ),
          TextButton(
            onPressed: () => {},
            child: Text("Tombol"),
          ),
          OutlinedButton(
            onPressed: () => {},
            child: Text("Tombol"),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.volume_up),
            tooltip: "My Button",
          ),
          DropdownScreen()
        ],
      ),
    );
  }
}

class DropdownScreen extends StatefulWidget {
  @override
  _DropdownScreenState createState() {
    return _DropdownScreenState();
  }
}

class _DropdownScreenState extends State<DropdownScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: language,
      hint: Text("Select Language"),
      onChanged: (String? value) {
        setState(() {
          language = value;
        });
      },
      items: [
        DropdownMenuItem(
          child: Text("Dart"),
          value: "dart",
        ),
        DropdownMenuItem(
          child: Text("Swift"),
          value: "swift",
        ),
        DropdownMenuItem(
          child: Text("Kotlin"),
          value: "kotlin",
        ),
      ],
    );
  }
}
