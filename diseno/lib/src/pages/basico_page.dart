import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle( fontSize: 16.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 14.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            Image(
              image: NetworkImage('https://alfapeople.com/br/wp-content/uploads/sites/12/2019/09/alfapeople-brasil-abre-novo-escritorio-recife-767x510@2x.jpeg'),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
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
            )
          ]
        )
      ),
    );
  }
}