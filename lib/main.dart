import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/repository_widgets.dart';

void main() => runApp(ImagesPages());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Examples',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Widget Examples'),
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
              Text(
                '3. Widget Row - Images - Expanded',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              RowImagesWidget(),
              Text(
                '4. Widget Column - Images - Expanded',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'ver archivo: \n "column_images_widget.dart"',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}

class ImagesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Examples',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Widget Examples'),
          ),
          body: StackWidget()),
    );
  }
}
