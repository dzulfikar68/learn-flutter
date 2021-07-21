import 'package:flutter/material.dart';

class BuilderScrollingScreen extends StatelessWidget {
  final List<int> numberList = <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "${numberList[index]}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
