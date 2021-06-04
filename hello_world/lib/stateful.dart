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
          child: BiggerText(
            text: "Hello World Text!",
          ),
        ),
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String? text;

  const BiggerText({this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text ?? "",
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _textSize = 32.0;
              });
            },
            child: Text("Perbesar"))
      ],
    );
  }
}

//======== example ===========

class ContohStateful extends StatefulWidget {
  final String parameterWidget;

  ContohStateful(this.parameterWidget);

  @override
  _ContohStatefulState createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<StatefulWidget> {
  String? _dataState;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
