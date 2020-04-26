import 'package:flutter/material.dart';


class ColumnImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ColumnImagesWidget(),
    );
  }
}
class ColumnImagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('Widget Column con imagenes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Expanded(
                child: Image.asset('assets/images/imagen_1.jpg'),
              ),
              Expanded(
                child: Image.asset('assets/images/imagen_2.jpg'),
              ),
              Expanded(
                child: Image.asset('assets/images/imagen_3.jpg'),
              )
            ],
        ),
      ),
    );
  }
}


