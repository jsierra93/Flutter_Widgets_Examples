import 'package:flutter/material.dart';

class GridViewExtentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Column Imagen Widget Examples'),
        ),
        body: GridView.extent(
            // Si se usa extent permite darle dimension maxima
            maxCrossAxisExtent: 250,
            padding: const EdgeInsets.all(3),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: _buildGridImagesList(4)));
  }

  List<Container> _buildGridImagesList(int count) => List.generate(count,
      (i) => Container(child: Image.asset('assets/images/imagen_$i.jpg')));
}

class GridViewCountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Column Imagen Widget Examples'),
        ),
        body: GridView.count(
            // Si se usa count permite decir cuantos elementos por linea
            crossAxisCount: 3,
            padding: const EdgeInsets.all(3),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: _buildGridImagesList(4)));
  }

  List<Container> _buildGridImagesList(int count) => List.generate(count,
      (i) => Container(child: Image.asset('assets/images/imagen_$i.jpg')));
}
