import 'package:flutter/material.dart';
import 'package:netflix_app/components/navbarSuperior.dart';

class CarteleraPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      cabecera(),
      infoSerie(),
      botonera(),
    ]);
  }
}

Widget cabecera() {
  return Stack(
    children: <Widget>[
      Image.asset(
        "assets/img/ozark.jpg",
      ),
      Container(
        width: double.infinity,
        height: 480.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.black38, Colors.black]),
        ),
      ),
      SafeArea(child: NavbarSuperior()),
    ],
  );
}

Widget infoSerie() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Violencia",
        style: TextStyle(color: Colors.white, fontSize: 13.0),
      ),
      SizedBox(width: 6.0),
      Icon(Icons.fiber_manual_record, color: Colors.grey[800], size: 5.0),
      SizedBox(width: 6.0),
      Text(
        "Sexo",
        style: TextStyle(color: Colors.white, fontSize: 13.0),
      ),
      SizedBox(width: 6.0),
      Icon(Icons.fiber_manual_record, color: Colors.grey[800], size: 5.0),
      SizedBox(width: 6.0),
      Text(
        "Lenguaje inapropiado",
        style: TextStyle(color: Colors.white, fontSize: 13.0),
      ),
      SizedBox(width: 6.0),
      Icon(Icons.fiber_manual_record, color: Colors.grey[800], size: 5.0),
      SizedBox(width: 6.0),
      Text(
        "Drogas",
        style: TextStyle(color: Colors.white, fontSize: 13.0),
      ),
    ],
  );
}

Widget botonera() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 3.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(
              Icons.check,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text("Mi lista",
                style: TextStyle(color: Colors.white60, fontSize: 10.0))
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 35.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text("Reproducir",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        letterSpacing: 1.0)),
              ],
            )),
        Column(
          children: <Widget>[
            Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text("Información",
                style: TextStyle(color: Colors.white60, fontSize: 10.0))
          ],
        ),
      ],
    ),
  );
}
