import 'package:flutter/material.dart';

class FirstScreenExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_book, color: Colors.white),
        ),
        title: Text('First Screen Expanded'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(child: Container(color: Colors.orange))),
          Expanded(flex: 2, child: Container(color: Colors.green)),
          Expanded(child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.indigo)),
          Expanded(child: Container(color: Colors.purple)),
        ]),
      ),
    );
  }
}

class FirstScreenDiffExpendedAndFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_book, color: Colors.white),
        ),
        title: Text('First Screen Expanded'),
      ),
      body: SafeArea(
          child: Column(children: <Widget>[
        Row(children: <Widget>[
          ExpandedWidget(),
          FlexibleWidget(),
        ]),
        Row(
          children: [
            ExpandedWidget(),
            ExpandedWidget(),
          ],
        ),
        Row(
          children: [
            FlexibleWidget(),
            FlexibleWidget(),
          ],
        ),
        Row(
          children: [
            FlexibleWidget(),
            ExpandedWidget(),
          ],
        ),
      ])),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
 
class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}