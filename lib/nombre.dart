import 'package:flutter/material.dart';

class Nombre extends StatelessWidget {
  Nombre();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Text(
        'Jerismar',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.orange),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
