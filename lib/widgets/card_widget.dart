import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Image.asset('assets/images/imagen_2.jpg')
              ),
            Divider(),
            ListTile(
              title: Text('Jorge Sierra',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.face,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('jsierra93@hotmail.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

