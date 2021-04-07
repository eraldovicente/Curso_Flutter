import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle( fontSize: 16.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 14.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),

          ]
        )
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://alfapeople.com/br/wp-content/uploads/sites/12/2019/09/alfapeople-brasil-abre-novo-escritorio-recife-767x510@2x.jpeg'),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
     return SafeArea(
       child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recife - Pernambuco', style: estiloTitulo),
                  SizedBox( height: 5.0 ),
                  Text('La magia del Recife', style: estiloSubTitulo)
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 30.0 ),
            Text('41', style: TextStyle( fontSize: 20.0 ) )
          ],
        ),
    ),
     );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        _accion( Icons.call, 'CALL' ),
        _accion( Icons.near_me, 'ROUTE' ),
        _accion( Icons.share, 'SHARE' )

      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ) )
      ],
    );
  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
          textAlign: TextAlign.justify
        ),
      ),
    );
  }

}