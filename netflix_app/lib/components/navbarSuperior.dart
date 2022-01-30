// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavbarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                "assets/img/netflixLogo.png",
                height: 40.0,
                width: 40.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.network(
                      "https://mir-s3-cdn-cf.behance.net/project_modules/disp/84c20033850498.56ba69ac290ea.png",
                      height: 25.0,
                      width: 25.0)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Series",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              Text(
                "Peliculas",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              Text(
                "Categorias",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
