import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {

  final peliculas = [
    'Spiderman',
    'Aquaman',
    'Batman',
    'Shazam!',
    'Ironman',
    'Capitan America'
  ];

  final peliculasRecientes = [
    'Spiderman',
    'Capitan America'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
      // Las acciones de nuestro AppBar
      return [
        IconButton(
          icon: Icon( Icons.clear ), 
          onPressed: () {
            query = '';
          }
        )
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      // Icono a la izquierda del AppBar
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,       
          progress: transitionAnimation   
        ), 
        onPressed: () {
          close( context, null );
        }
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // Crea los resultados que vamos a mostrar
      return Container();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    // Son las sugerencias que aparecen cuando la persona escribe
     
    final listaSugerida = ( query.isEmpty ) 
                          ? peliculasRecientes
                          : peliculas.where( 
                            (p) => p.toLowerCase().startsWith(query.toLowerCase()) 
                          ).toList();
    
    return ListView.builder(
      itemCount: listaSugerida.length,  
      itemBuilder: ( context, i ) {
        return ListTile(
          leading: Icon(Icons.movie),
          title: Text(listaSugerida[i])
        );
      }
    );
  }

}