// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class ItemRectangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: <Widget>[
            Container(
                height: 120.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    "assets/img/LaSerpiente.jpg",
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ))
          ],
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
