import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Text('Column Widget Examples'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 50, color: Colors.red, child: Text('Elemento # 1')),
              Container(
                  height: 50, color: Colors.blue, child: Text('Elemento # 2')),
              Container(
                  height: 50, color: Colors.green, child: Text('Elemento # 3')),
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("Volver"),
              )
            ],
          )
    );
  }
}
