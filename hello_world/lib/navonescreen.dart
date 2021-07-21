import 'package:flutter/material.dart';
import 'package:hello_world/navtwoscreen.dart';

class OneScreen extends StatelessWidget {
  final String message = "Hello from First Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Pindah Screen"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TwoScreen(message)));
          },
        ),
      ),
    );
  }
}
