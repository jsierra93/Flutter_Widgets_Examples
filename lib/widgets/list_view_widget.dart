import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text('Column Imagen Widget Examples'),
          ),
          body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('ListView: Permite tener scroll', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
          ),
        _tile('Dart', 'Desarrollado por Google en 2011', Icons.build),
        _tile('Java', 'Desarrollado por Sun Microsystems en 1995', Icons.build),
        _tile('C#', 'Desarrollado por Microsoft en 1999', Icons.build),
        _tile('Python', 'Desarrollado por Guido van Rossum en 1991', Icons.build),
        _tile('Cobol', 'Desarrollador por CODASYL en 1959', Icons.build),
        _tile('Php', 'Desarrollado por Rasmus Lerdorf en 1995', Icons.build),
       
        _tile('Dart', 'Desarrollado por Google en 2011', Icons.build),
        _tile('Java', 'Desarrollado por Sun Microsystems en 1995', Icons.build),
        _tile('C#', 'Desarrollado por Microsoft en 1999', Icons.build),
        _tile('Python', 'Desarrollado por Guido van Rossum en 1991', Icons.build),
        _tile('Cobol', 'Desarrollador por CODASYL en 1959', Icons.build),
        _tile('Php', 'Desarrollado por Rasmus Lerdorf en 1995', Icons.build),
       
        _tile('Dart', 'Desarrollado por Google en 2011', Icons.build),
        _tile('Java', 'Desarrollado por Sun Microsystems en 1995', Icons.build),
        _tile('C#', 'Desarrollado por Microsoft en 1999', Icons.build),
        _tile('Python', 'Desarrollado por Guido van Rossum en 1991', Icons.build),
        _tile('Cobol', 'Desarrollador por CODASYL en 1959', Icons.build),
        _tile('Php', 'Desarrollado por Rasmus Lerdorf en 1995', Icons.build),
       
  
      ]),
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          size: 40,
          color: Colors.blue[500],
        ),
        onTap: () {
          print('clic en el boton: $title');
        },
      );
}
