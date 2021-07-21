import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeparatedScrollingScreen extends StatelessWidget {
  final List<int> numberList = <int>[-0, 0, 1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext ctx, int index) => Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        separatorBuilder: (BuildContext ctx, int index) => Divider(),
        itemCount: numberList.length,
      ),
    );
  }
}
