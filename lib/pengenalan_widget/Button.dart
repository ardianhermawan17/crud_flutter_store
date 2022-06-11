import 'package:flutter/material.dart';

class TextButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          Container(
              margin: EdgeInsets.all(16.0),
              child: TextButton(onPressed: () {}, child: Text('Text Button')))
        ]));
  }
}

class ElevatedButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          Container(
              margin: EdgeInsets.all(16.0),
              child: ElevatedButton(onPressed: () {}, child: Text('Tombol')))
        ]));
  }
}

class IconButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          Container(
              margin: EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: () {},
              ))
        ]));
  }
}

// class DropdownButtonCustom extends StatelessWidget {
//   final String? language;

//   DropdownButtonCustom({String? language});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea();
//   }
// }
