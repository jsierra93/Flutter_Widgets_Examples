import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/repository_widgets.dart';

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
      title: 'Flutter Widget Examples',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Widget Examples'),
          ),
          body: Column(
            children: <Widget>[
              ListWidgetElement(numItem: '1', textItem: 'Row Widget', linkPage: RowPages()),
              ListWidgetElement(numItem: '2', textItem: 'Column Widget', linkPage: ColumnPage()),
              ListWidgetElement(numItem: '3', textItem: 'Row Image Widget', linkPage: RowPages()),
              ListWidgetElement(numItem: '4', textItem: 'Column Image Widget', linkPage: RowPages()),
              ListWidgetElement(numItem: '5', textItem: 'List View Widget', linkPage: RowPages()),
              ListWidgetElement(numItem: '6', textItem: 'Grid View Widget', linkPage: RowPages()),
              ListWidgetElement(numItem: '7', textItem: 'Stack Widget', linkPage: RowPages())
            ],
          )),
    );
  }
}

class ListWidgetElement extends StatelessWidget {

final String numItem;
final String textItem;
final StatelessWidget linkPage ;

  const ListWidgetElement({
    @required this.numItem, 
    @required this.textItem, 
    @required this.linkPage}
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: AlignmentDirectional.bottomStart,
      child: Column(
            children: <Widget>[
               Text(
                '$numItem. $textItem',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                      child: Text('View Example'),
                      onPressed: () =>{
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return (this.linkPage);
                                  }))
                            }
                  ),
            ],
          )
    );
  }
}

  