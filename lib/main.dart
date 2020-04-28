import 'package:flutter/material.dart';
import 'package:widgets_examples/widgets/repository_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Examples',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Widget Examples'),
          ),
          body: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/image_home_2.jpg',
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              SizedBox(height: 10, width: double.infinity),
              ListWidgetElement(
                  numItem: '1', textItem: 'Row Widget', linkPage: RowPages()),
              ListWidgetElement(
                  numItem: '2',
                  textItem: 'Column Widget',
                  linkPage: ColumnPage()),
              ListWidgetElement(
                  numItem: '3',
                  textItem: 'Row Image Widget',
                  linkPage: RowImagesWidget()),
              ListWidgetElement(
                  numItem: '4',
                  textItem: 'Column Image Widget',
                  linkPage: ColumnImagesPage()),
              ListWidgetElement(
                  numItem: '5',
                  textItem: 'List View Widget',
                  linkPage: ListViewWidget()),
              ListWidgetElement(
                  numItem: '6',
                  textItem: 'Grid View Extent Widget',
                  linkPage: GridViewExtentPage()),
              ListWidgetElement(
                  numItem: '7',
                  textItem: 'Grid View Count Widget',
                  linkPage: GridViewCountPage()),
              ListWidgetElement(
                  numItem: '8',
                  textItem: 'Stack Widget',
                  linkPage: StackPage()),
            ],
          )),
    );
  }
}

class ListWidgetElement extends StatelessWidget {
  final String numItem;
  final String textItem;
  final StatelessWidget linkPage;

  const ListWidgetElement(
      {@required this.numItem,
      @required this.textItem,
      @required this.linkPage});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: SizedBox(
          width: double.infinity,
          height: 80,
          child: Column(
            children: <Widget>[
              Text(
                '$numItem. $textItem',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                  shape: StadiumBorder(),
                  elevation: 4,
                  child: Text('View Example'),
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.black45,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return (this.linkPage);
                    }));
                  })
            ],
          ),
        ));
  }
}

/* RaisedButton(
              //animationDuration: Duration(seconds: 5),
             shape: StadiumBorder(),//bordes redondeados
           //   shape: RoundedRectangleBorder(
           //     borderRadius: BorderRadius.circular(30) // darle forma circular al boton
           //   ),
              //highlightElevation: 1,
              elevation: 4, // le da altura al elemento y genera sombra
              child: Text('View Example'),
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              textColor: Colors.white,
              //highlightColor: Colors.black45, //cuando se le da clic
              splashColor: Colors.black45, // cuando se le deja presionado
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return (this.linkPage);
                }));
              })
              */
