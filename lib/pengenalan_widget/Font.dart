import 'package:flutter/material.dart';

class FirstScreenFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white
          )
        ),
        title: Text('First Screen Font'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white
            )
          )
        ]
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Hello World testomg',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                )
              )
            ),
            Center(
              child: Text(
                'Ini yang biasa',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.blue
                 )
              )
            )
          ],
        ),
      )
    );
  }
}
