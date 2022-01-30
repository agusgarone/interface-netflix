// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app/components/cartelera.dart';
import 'package:netflix_app/components/itemRectangular.dart';
import 'package:netflix_app/components/item_ViendoAhora.dart';
import 'package:netflix_app/components/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CarteleraPrincipal(),
          ListaHorizontal('Avances', ItemRedondeado(), 5),
          SizedBox(
            height: 10.0,
          ),
          ListaHorizontal('Populares', ItemViendoAhora(), 1),
          SizedBox(
            height: 10.0,
          ),
          ListaHorizontal('Programas sobre viajes', ItemRectangular(), 7),
          SizedBox(
            height: 10.0,
          ),
          ListaHorizontal('Tendencias', ItemRectangular(), 7),
          SizedBox(
            height: 10.0,
          ),
          ListaHorizontal('Mi lista', ItemRectangular(), 7),
          navInferior(),
        ],
      ),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "Incio",
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            title: Text("Juegos", style: TextStyle(fontSize: 12.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text("Proximamente", style: TextStyle(fontSize: 12.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_downward),
            title: Text("Descargas", style: TextStyle(fontSize: 12.0)),
          ),
        ]);
  }

  Widget ListaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
          child: Text(titulo,
              style: TextStyle(
                  color: Color(0xFFF5F5F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        Container(
          height: 155.0,
          // decoration: BoxDecoration(
          //   color: Colors.red,
          // ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
