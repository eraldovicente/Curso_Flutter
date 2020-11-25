import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25 );

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefullWidget'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de click:', style: _estiloTexto ),
            Text( '$_conteo', style: _estiloTexto )
          ]
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {

          // Necessita um StatefullWidget
          _conteo++; 

          setState(() {

          });
        },
      )
    );
  }
}