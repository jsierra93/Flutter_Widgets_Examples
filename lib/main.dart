import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/repository_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new MyApp(),
      '/card': (BuildContext context) => new CardWidget(),
      '/stack': (BuildContext context) => new StackWidget(),
      '/screen1': (BuildContext context) => new Screen1(),
      '/imagesPage': (BuildContext context) => new ImagesPages(),
    }, title: 'Flutter Widget Examples', home: Screen1()
        /* Scaffold(
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
              ),
              MaterialButton(
                  child: Text('Boton'),
                  onPressed: () =>{
                        Navigator.of(context).pushNamed('/screen1')
                        })
            ],*/
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
          body: Column(
            children: <Widget>[
              CardWidget(),
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: new Text("Pop"),
              )
            ],
          )),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Screen 1"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/imagesPage');
              },
              child: new Text("Push to imagesPage"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new RaisedButton(
              onPressed: () {
                print(Navigator.of(context).canPop().toString());
              },
              child: new Text("Can Pop"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: new Text("Maybe Pop"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text("Pop"),
            )
          ],
        ),
      ),
    );
  }
}
