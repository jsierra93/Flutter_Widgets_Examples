import 'package:flutter/material.dart';

class RowPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Row Widget Examples'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ));
  }
}
