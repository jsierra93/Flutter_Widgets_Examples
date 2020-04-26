import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/repository_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: Column(
            children: <Widget>[
              Text(
                '1. Widget Row',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              RowWidget(),
              Text(
                '2. Widget Column',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ColumnWidget(),
            ],
          )),
    );
  }
}
