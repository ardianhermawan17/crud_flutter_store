import 'package:flutter/material.dart';

class RowCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down)
      ],
    );
  }
}

class ColumnCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        'Sebuah Judul',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text('Lorem ipsum dolor sit amet')
    ]);
  }
}

class ColumnAndRowCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(          
          children: <Widget>[
            Text('MainAxisAligment.spaceEvenly'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[                
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
                ],
            )
          ],
        ),
        Column(
          children: <Widget>[
            Text('MainAxisAligment.spaceAround'),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[              
              Icon(Icons.share),
              Icon(Icons.thumb_up),
              Icon(Icons.thumb_down)
              ],
            ),
          ]
        ),
        Column(
          children: <Widget>[
            Text('MainAxisAligment.spaceBetween'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[                
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
          ]
        ),
        Column(
          children: <Widget>[
            Text('MainAxisAligment.start'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
          ]
        ),
        Column(
          children: <Widget>[
            Text('MainAxisAligment.center'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[                
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
          ]
        ),
        Column(
          children: <Widget>[
            Text('MainAxisAligment.end'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[                
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
          ]
        )
      ]
    );
  }
}
