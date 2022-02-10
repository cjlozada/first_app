import 'package:flutter/material.dart';

class Saludo extends StatelessWidget {
  final String saludoText;

  Saludo(this.saludoText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(80),
      child: Text(
        saludoText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
