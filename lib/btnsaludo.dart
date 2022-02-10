import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  //Para llamar a una función desde afuera. El selectHandler es el parámetro.
  //Debo ponerlo con this. en el constructor.
  final VoidCallback selectHandler;

  Boton(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.indigo.shade900),
          ),
          onPressed: selectHandler,
          child: Text(
            'Hola',
            style: TextStyle(
              fontSize: 20,
              color: Colors.amber,
            ),
          )),
    );
  }
}
