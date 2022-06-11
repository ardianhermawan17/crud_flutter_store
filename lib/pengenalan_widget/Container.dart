import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          'Hi',
          style: TextStyle(fontSize: 40)
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10
            )
          ],
          border: Border.all(
            color: Colors.green, 
            width: 3
            ),
          borderRadius: BorderRadius.circular(10)
        ),
        // width: 200,
        // height: 200,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10)
    );
  }
}
