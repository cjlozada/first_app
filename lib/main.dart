import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
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
            Text('Esto es una prueba más pequeña'),
            Text(
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
          ],
        ),
      ),
    );
  }
}
