import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Screen"),
      ),
      body: Container(
        child: Text(
          "Hi",
          style: TextStyle(fontSize: 40),
        ),
        // color: Colors.blue,
        width: 200,
        height: 100,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Colors.red,
            // shape: BoxShape.circle,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(3, 6), blurRadius: 10)
            ]),
      ),
    );
  }
}

void padding() {
  Padding(
    padding: EdgeInsets.all(30),
    child: Text("ini padding"),
  );
}

void center() {
  Center(
    child: Text("Text berada di tengah"),
  );
}
