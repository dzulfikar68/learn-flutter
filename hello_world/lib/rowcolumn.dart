import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container Screen"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.share)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.thumb_up)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.thumb_down)),
          ],
        ));
  }
}

class ColumnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container Screen"),
        ),
        body: Column(
          children: [
            Text('Sebuah Judul',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text("Lorem ipsum dolor sit amet"),
          ],
        ));
  }
}
