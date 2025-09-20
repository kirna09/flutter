import 'package:flutter/material.dart';
import 'home_page.dart';

// Define the Data class if it doesn't exist elsewhere

class Datospage extends StatelessWidget {
  final Data data;
  Datospage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Datos Recibidos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre: ${data.nombre}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text('Genero: ${data.genero}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
