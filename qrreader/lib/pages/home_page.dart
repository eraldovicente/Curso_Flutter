import 'package:flutter/material.dart';
import 'package:qrreader/pages/direcciones_page.dart';

import 'package:qrreader/pages/mapas_page.dart';
import 'package:qrreader/widget/custom_navigatorbar.dart';
import 'package:qrreader/widget/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
            icon: Icon( Icons.delete_forever ),
            onPressed: () {

            },
          )
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // Cambiar para mostrar la pagina respectiva
    final currentIndex = 1;

    switch( currentIndex ) {

      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }
  }
}