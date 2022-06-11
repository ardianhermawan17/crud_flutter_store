import 'package:flutter/material.dart';

class FirstScreenInputWidgetOnChanged extends StatefulWidget {
  @override
  _FirstScreenInputWidgetOnChangedState createState() =>
      _FirstScreenInputWidgetOnChangedState();
}

class _FirstScreenInputWidgetOnChangedState
    extends State<FirstScreenInputWidgetOnChanged> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Write your name here...',
                    labelText: 'Your name',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _name = value;
                    });
                  }),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Hello, $_name'),
                          );
                        });
                  },
                  child: Text('Submit'))
            ])));
  }
}

class FirstScreenInputWidgetController extends StatefulWidget {
  @override
  _FirstScreenInputWidgetControllerState createState() =>
      _FirstScreenInputWidgetControllerState();
}

class _FirstScreenInputWidgetControllerState
    extends State<FirstScreenInputWidgetController> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Write your name here...',
                    labelText: 'Your name',
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                                'Hello ini pake controller yaa, ${_controller.text}'),
                          );
                        });
                  },
                  child: Text('Submit'))
            ])));
  }
}

class FirstScreenSwitch extends StatefulWidget {
  @override
  _FirstScreenSwitchState createState() => _FirstScreenSwitchState();
}

class _FirstScreenSwitchState extends State<FirstScreenSwitch> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('First Screen Switch')),
        body: Switch(
            value: lightOn,
            onChanged: (bool value) {
              setState(() {
                lightOn = value;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light Off'), //
                    duration: Duration(seconds: 1)),
              );
            }));
  }
}

class FirstScreenRadio extends StatefulWidget {
  @override
  _FirstScreenRadioState createState() => _FirstScreenRadioState();
}

class _FirstScreenRadioState extends State<FirstScreenRadio> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('First Screen')),
        body: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
              leading: Radio<String>(
                  value: 'Kotlin',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                      showSnackbar();
                    });
                  }),
              title: Text('Kotlin')),
          ListTile(
            leading: Radio<String>(
              value: 'Swift',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Swift'),
          ),
        ]));
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language selected'),
      duration: Duration(seconds: 1),
    ));
  }
}

class FirstScreenCheckbox extends StatefulWidget {
  @override
  _FirstScreenCheckboxState createState() => _FirstScreenCheckboxState();
}

class _FirstScreenCheckboxState extends State<FirstScreenCheckbox> {
  bool? agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen Checkbox')
      ),
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value) {
            setState(() {
              agree = value;
            });
          }
        ),
        title: Text('Agree / Disagree')
      )
    );
  }
}
