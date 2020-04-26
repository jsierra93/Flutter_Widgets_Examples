import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.extent(
            maxCrossAxisExtent: 250,
            padding: const EdgeInsets.all(3),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: _buildGridImagesList(4)));
  }

  List<Container> _buildGridImagesList(int count) => List.generate(count,
      (i) => Container(child: Image.asset('assets/images/imagen_$i.jpg')));
}

class GridViewCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(3),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: _buildGridImagesList(4)));
  }

  List<Container> _buildGridImagesList(int count) => List.generate(count,
      (i) => Container(child: Image.asset('assets/images/imagen_$i.jpg')));
}
