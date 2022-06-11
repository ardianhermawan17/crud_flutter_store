import 'package:flutter/material.dart';

class FirstScreenListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
            title: Text('First Screen Hello')),
        body: ListView(children: <Widget>[
          Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey, border: Border.all(color: Colors.black)),
              child: Center(child: Text('1', style: TextStyle(fontSize: 50)))),
          Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey, border: Border.all(color: Colors.black)),
              child: Center(child: Text('2', style: TextStyle(fontSize: 50)))),
          Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey, border: Border.all(color: Colors.black)),
              child: Center(child: Text('3', style: TextStyle(fontSize: 50)))),
          Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey, border: Border.all(color: Colors.black)),
              child: Center(child: Text('4', style: TextStyle(fontSize: 50))))
        ]));
  }
}

class FirstScreenScrolling extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_outlined, color: Colors.white)
        ),
        title: Text('First Screen Scroll')
      ),
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black)
            ),
          );
        }).toList(),
      )
    );
  }
}

class FirstScreenListViewBuilder extends StatelessWidget {
  final List<int> numberList = <int>[90, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_outlined, color: Colors.white)
        ),
        title: Text('First Screen Scroll')
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black)
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              )
            )
          );
        }
      )
    );
  }
}

class FirstScreenListViewSeparated extends StatelessWidget {
  final List<int> numberList = <int>[50, 124, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_outlined, color: Colors.white)
        ),
        title: Text('First Screen Scroll')
      ),
      body: ListView.separated(
        itemCount: numberList.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black)
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              )
            )
          );
        }
      )
    );
  }
}
