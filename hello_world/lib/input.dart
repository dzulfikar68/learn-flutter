import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String _name = "";
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(_name),
          TextField(
            onChanged: (String value) => setState(() => _name = value),
            onSubmitted: (value) => {},
          ),
          // TextField(
          //   controller: _controller,
          // ),
          // InputImplementation(),
          // InputControlImplementation(),
          RadioWidget(),
          CheckboxWidget(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxState createState() {
    return CheckboxState();
  }
}

class CheckboxState extends State<CheckboxWidget> {
  bool? agree = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: agree,
        onChanged: (bool? value) {
          setState(() {
            agree = value;
          });
        },
      ),
      title: Text("Agree/ Disagree"),
    );
  }
}

class RadioWidget extends StatefulWidget {
  @override
  _RadioState createState() {
    return _RadioState();
  }
}

class _RadioState extends State<RadioWidget> {
  String? language;

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("$language selected"),
      duration: Duration(
        seconds: 1,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text("Dart"),
          leading: Radio<String>(
            value: "dart",
            groupValue: language,
            onChanged: (value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
        ),
        ListTile(
          title: Text("Swift"),
          leading: Radio<String>(
            value: "swift",
            groupValue: language,
            onChanged: (value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
        ),
        ListTile(
          title: Text("Kotlin"),
          leading: Radio<String>(
            value: "kotlin",
            groupValue: language,
            onChanged: (value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
        ),
      ],
    );
  }
}

class InputControlImplementation extends StatefulWidget {
  @override
  _InputControlImplementationState createState() {
    return _InputControlImplementationState();
  }
}

class _InputControlImplementationState
    extends State<InputControlImplementation> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Write your name here...",
            labelText: "Your Name",
          ),
          controller: _controller,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () => {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Hello, ${_controller.text}"),
                  );
                })
          },
          child: Text("Submit 2"),
        ),
      ],
    );
  }
}

class InputImplementation extends StatefulWidget {
  @override
  _InputImplementationState createState() {
    return _InputImplementationState();
  }
}

class _InputImplementationState extends State<InputImplementation> {
  String _name = "";
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Write your name here...",
            labelText: "Your Name",
          ),
          onChanged: (String value) => setState(() {
            _name = value;
          }),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () => {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Hello, $_name"),
                  );
                })
          },
          child: Text("Submit"),
        ),
        InputControlImplementation(),
        Switch(
            value: lightOn,
            onChanged: (bool value) {
              setState(() {
                lightOn = value;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(lightOn ? "Light On" : "Light Off"),
                  duration: Duration(seconds: 1),
                ),
              );
            })
      ],
    );
  }
}
