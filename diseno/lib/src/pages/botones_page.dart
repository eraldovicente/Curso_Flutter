import 'package:flutter/material.dart';

import 'dart:math';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: [
                _titulos()
              ]
            )
          )
        ],
      )
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      )
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 280.0,
        width: 280.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      )
    );
    
    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -70.0,
          child: cajaRosa 
        )
      ],
    );
  }

  Widget _titulos() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle( color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 15.0 ))
          ]
        ),
      ),
    );
  }

}