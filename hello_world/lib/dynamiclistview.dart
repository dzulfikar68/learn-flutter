import 'package:flutter/material.dart';

class DynamicScrollingScreen extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList
            .map((e) => Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '$e',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
