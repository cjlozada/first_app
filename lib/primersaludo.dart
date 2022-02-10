import 'package:flutter/material.dart';

class PrimerTexto extends StatelessWidget {
  PrimerTexto();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Text(
        'Esto es una prueba más pequeña',
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
