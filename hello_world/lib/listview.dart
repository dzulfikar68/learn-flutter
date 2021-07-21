import 'package:flutter/material.dart';

class ScrollingScreen extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList
            .map((number) => Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      "$number",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

var listView = ListView(
  children: [
    Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          "1",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          "2",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          "3",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          "4",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
  ],
);
