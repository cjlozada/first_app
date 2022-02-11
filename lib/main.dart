import 'package:first_app/nombre.dart';
import 'package:flutter/material.dart';
import './saludo.dart';
import './primersaludo.dart';
import './btnsaludo.dart';

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
  var pulsaBoton = 0;
  var saludos = [
    'Hola',
    '¿Cómo estás?',
    'Solo quiero hablar contigo un rato',
    '¿Por qué me ignoras?',
    'Ah...',
    'Es cierto que no puedes responder aún',
    'Bueno, entonces te dejaré avanzar',
    'Pero solo porque no tienes opciones',
  ];

  void otroTexto() {
    setState(() {});
    if (indiceNormal < saludos.length - 1) {
      indiceNormal++;
      pulsaBoton += 1;
      print(indiceNormal);
    } else {
      indiceNormal = 0;
      print(indiceNormal);
      pulsaBoton += 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade900,
          title: Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Column(
          children: [
            PrimerTexto(),
            Saludo(
              saludos[indiceNormal],
            ),
            Boton(otroTexto),
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
