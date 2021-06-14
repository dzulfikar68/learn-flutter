import 'package:flutter/material.dart';

import 'image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: "Oswald", primarySwatch: Colors.blue),
        home: ImageScreen());
  }
}
