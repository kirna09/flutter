import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mi_app/src/pages/datos_recibidos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ctrlPeso = new TextEditingController();
  final ctrlest = new TextEditingController();
  final data = new Data(peso: '', estatura: '');
  int _valor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 11, 110),
        title: Text('mini proyecto'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Ingresa tu peso en kg: ej: 70'),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SizedBox(
                width: 250, // tamaño fijo opcional
                child: TextField(
                  controller: ctrlPeso,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Ingresa tu peso en kg',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(3),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text('Selecciona tu estatura en m: ej: 1.75'),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SizedBox(
                width: 250, // tamaño fijo opcional
                child: TextField(
                  controller: ctrlest,
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Ingresa tu estatura en m',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                    LengthLimitingTextInputFormatter(4),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 96, 11, 110),
              ),
              child: Text('Enviar'),
              onPressed: () {
                setState(() {
                  data.peso = ctrlPeso.text;
                  data.estatura = ctrlest.text;

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DatosPage(data: data),
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
  String peso = '';
  String estatura = '';

  Data({required this.peso, required this.estatura});
}
