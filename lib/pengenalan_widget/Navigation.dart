import 'package:flutter/material.dart';

class SecondScreenNavigation extends StatelessWidget {
  final String message;

  SecondScreenNavigation(this.message);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {}),
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            OutlinedButton(
              child: Text('Go back!'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ]
        )
      ),
    );
  }
}

class FirstScreenNavigation extends StatelessWidget {
  final String message = 'Hello aku ini screen pertama';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {}),
        title: Text('First Screen'),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('Go To Second!'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreenNavigation(message);
            }));
          },
        ),
      ),
    );
  }
}
