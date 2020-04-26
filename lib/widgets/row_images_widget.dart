import 'package:flutter/material.dart';

class RowImagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: 
                Image.asset('assets/images/imagen_1.jpg'),
        ),
        Expanded(child: 
        Image.asset('assets/images/imagen_2.jpg'),
        ),
        Expanded(child: 
        Image.asset('assets/images/imagen_3.jpg'),
        )
              ],
    );
  }
}
