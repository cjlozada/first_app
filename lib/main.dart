import 'package:first_app/nombre.dart';
import 'package:flutter/material.dart';
import './saludo.dart';
import './primersaludo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var indiceNormal = 0;

  void otroTexto() {
    setState(() {});
    if (indiceNormal < 2) {
      indiceNormal++;
      print(indiceNormal);
    } else {
      indiceNormal = 0;
      print(indiceNormal);
    }
  }

  @override
  Widget build(BuildContext context) {
    var saludos = [
      'Buenos días',
      'Buenas tardes',
      'Buenas noches',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Una prueba'),
        ),
        body: Column(
          children: [
            PrimerTexto(),
            Saludo(
              saludos[indiceNormal],
            ),
            ElevatedButton(
              onPressed: otroTexto,
              child: Text('Hola'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Segundo Hola'),
            ),
            Nombre(),
          ],
        ),
      ),
    );
  }
}
