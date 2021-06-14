import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Screen",
          // style: TextStyle(fontFamily: "Oswald", fontSize: 30),
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Image.asset(
          "images/android.jpeg",
          width: 200,
          height: 200,
        ),
        // Image.network(
        //   "https://picsum.photos/200/300",
        //   width: 200,
        //   height: 200,
        // ),
      ),
    );
  }
}
