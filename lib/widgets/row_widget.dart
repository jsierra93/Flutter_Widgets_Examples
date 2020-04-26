import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.red,
          child: Text('Elemento # 1')),
        Container(
          height: 50,
          color: Colors.blue,
          child: Text('Elemento # 2')),
          Container(
            height: 50,
          color: Colors.green,
          child: Text('Elemento # 3'))
          ],
    );
  }
}