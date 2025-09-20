import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/datos_Recibidos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final ctrlnom = TextEditingController();
  final data = Data(nombre: '', genero: '');

  int _valor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practica 03')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ctrlnom,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'ingresa el Nombre',
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            SizedBox(height: 20),
            DropdownButton(
              value: _valor,
              items: [
                DropdownMenuItem(value: 1, child: Text('Masculino')),
                DropdownMenuItem(value: 2, child: Text('Femenino')),
              ],
              onChanged: (selected) {
                setState(() {
                  _valor = selected!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(
                  255,
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                ),
              ),
              child: Text('Enviar Datos'),
              onPressed: () {
                setState(() {
                  data.nombre = ctrlnom.text;
                  if (_valor == 1) {
                    data.genero = 'Masculino';
                  } else {
                    data.genero = 'Femenino';
                  }
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Datospage(data: data),
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  String nombre;
  String genero;
  Data({this.nombre = '', this.genero = ''});
}
