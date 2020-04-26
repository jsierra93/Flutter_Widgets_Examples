import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Stack(
          alignment: const Alignment(0.6, 0.6),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/imagen_0.jpg'),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text(
                'Developers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Stack(alignment: const Alignment(0.6, 0.6), children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/imagen_2.jpg'),
            radius: 100,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'designer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
