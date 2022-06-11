import 'package:flutter/material.dart';
import 'package:flutter_apllication_dicoding/pengenalan_widget/Navigation.dart';
import 'package:flutter_apllication_dicoding/pengenalan_widget/ResponsiveLayout.dart';
import './pengenalan_widget/Container.dart';
import './pengenalan_widget/RowAndColumn.dart';
import './pengenalan_widget/Button.dart';
import './pengenalan_widget/InputWidget.dart';
import './pengenalan_widget/Image.dart';
import './pengenalan_widget/Font.dart';
import 'package:flutter_apllication_dicoding/pengenalan_widget/ListView.dart';
import 'package:flutter_apllication_dicoding/pengenalan_widget/ExpandedAndFlexible.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Dicoding',
        theme: ThemeData(
          //defaultfont fontFamily: 'Oswald',
          primarySwatch: Colors.blue,
        ),
        home: FirstScreenResponsivePage());
  }
}

class Heading extends StatelessWidget {
  final String text;
  Heading({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ));
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({required this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
            child: Text('Perbesar'),
            onPressed: () {
              setState(() {
                _textSize = 32.0;
              });
            })
      ],
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {}),
        title: Text('First Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: IconButtonCustom(),
    );
  }
}

class FirstScreenStatefull extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreenStatefull> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: DropdownButton<String>(
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem<String>(value: 'Dart', child: Text('Dart')),
            DropdownMenuItem<String>(value: 'Kotlin', child: Text('Kotlin')),
            DropdownMenuItem<String>(value: 'Swift', child: Text('Swift'))
          ],
          value: language,
          hint: Text('Select Languange'),
          onChanged: (String? value) {
            setState(() {
              language = value;
            });
          }),
    );
  }
}
