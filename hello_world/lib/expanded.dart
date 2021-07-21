import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedRainbow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.indigo,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}

// Column(
//       children: <Widget>[
//         Container(
//             color: Colors.red,
//           ),
//         Container(
//             color: Colors.orange,
//           ),
//         Container(
//             color: Colors.yellow,
//           ),
//         Container(
//             color: Colors.green,
//           ),
//         Container(
//             color: Colors.blue,
//           ),
//         Container(
//             color: Colors.indigo,
//           ),
//         Container(
//             color: Colors.purple,
//           ),
//       ],
//     );
