// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class ItemViendoAhora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  height: 120.0,
                  width: 100.0,
                  child: Image.asset(
                    "assets/img/House_of_Cards1.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  width: 55.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(27.5),
                      border: Border.all(color: Colors.white60, width: 2.0)),
                ),
                Icon(Icons.play_arrow, color: Colors.white, size: 40.0),
              ],
            ),
            Container(
              width: 100.0,
              height: 2.0,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.info_outline, color: Colors.white, size: 25.0),
                    SizedBox(width: 20.0),
                    Icon(Icons.more_vert, color: Colors.white, size: 25.0),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
