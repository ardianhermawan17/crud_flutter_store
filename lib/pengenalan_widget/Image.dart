import 'package:flutter/material.dart';

class FirstScreenImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen Image')
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200
        )
      )
    );
  }
}

class FirstScreenImageLocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          )
        ),
        title: Text('First Screen Image Local'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white
              )
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Image.asset("assets/images/forest.jpeg")
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          )
      )
    );
  }
}
