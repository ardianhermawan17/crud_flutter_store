import 'package:flutter/material.dart';

class FirstScreenHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_book, color: Colors.white)
        ),
        title: Text('First Screen Home Page')
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Screen width: ${screenSize.width.toStringAsFixed(2)}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
          Text(
            'Orientation: $orientation',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            )
          )
        ]
      )
    );
  }
}

class FirstScreenDiffMediaQueryAndLayoutBuilder extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_book, color: Colors.white)
        ),
        title: Text('First Screen Home Page')
      ),
      backgroundColor: Colors.blueGrey,
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      )
                    ),
                    Text(
                      'LayoutBuilder: ${constraints.maxWidth}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      )
                    )
                  ]
                );
              }
            )
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints){
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'LayoutBuilder: ${constraints.maxWidth}',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ]
                  )
                );
              }
            )
          )
        ]
      )
    );
  }
}

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  AppBarCustom({Key? key,required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_book, color: Colors.white)
        ),
        title: Text(title)
    );
  }
}

class FirstScreenResponsivePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'ingenues'),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateContainers(),
            );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }
 
  List<Widget> _generateContainers() {
    return List<Widget>.generate(20, (index) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}