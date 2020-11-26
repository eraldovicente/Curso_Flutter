import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1()
        ]),
    );
  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aquí estamos con la descripcion de la tajeta que quiero que ustedes vean para tener una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              ),              
            ],
          )
        ],
      )
    );
  }
}