import 'package:flutter/material.dart';

class Nombre extends StatelessWidget {
  Nombre();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Jerismar',
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
