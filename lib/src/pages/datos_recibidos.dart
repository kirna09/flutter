import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/home_page.dart';

class DatosPage extends StatelessWidget {
  final Data data;
  DatosPage({required this.data});

  double _calcularIMC(String peso, String estatura) {
    double pesoValue = double.tryParse(peso) ?? 0;
    double estaturaValue = double.tryParse(estatura) ?? 0;
    if (estaturaValue > 0) {
      return pesoValue / (estaturaValue * estaturaValue);
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    double imc = _calcularIMC(data.peso, data.estatura);

    String imgPath;
    if (imc < 18.5) {
      imgPath = 'assets/images/bajoPeso.png';
    } else if (imc < 24.9) {
      imgPath = 'assets/images/pesoNormal.png';
    } else if (imc < 26.9) {
      imgPath = 'assets/images/obesidad.png';
    } else if (imc < 29.9) {
      imgPath = 'assets/images/oGrado1.png';
    } else if (imc < 39.9) {
      imgPath = 'assets/images/oGrado2.png';
    } else {
      imgPath = 'assets/images/oGrado3.png';
    }

    String imcTexto;
    if (imc < 18.5) {
      imcTexto = 'Bajo peso';
    } else if (imc < 24.9) {
      imcTexto = 'Peso normal';
    } else if (imc < 26.9) {
      imcTexto = 'obesidad ';
    } else if (imc < 29.9) {
      imcTexto = 'Obesidad grado 1';
    } else if (imc < 39.9) {
      imcTexto = 'Obesidad grado 2';
    } else {
      imcTexto = 'Obesidad grado 3';
    }

    return Scaffold(
      appBar: AppBar(title: Text('Datos Recibidos'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                children: [
                  Image.asset(imgPath, height: 450, fit: BoxFit.fitWidth),
                  SizedBox(height: 50),
                  Text(imcTexto),
                  SizedBox(height: 50),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(1),
                    },
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Peso'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${data.peso} kg'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Estatura'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${data.estatura} m'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('IMC'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${imc.toStringAsFixed(2)} kg/m²'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 250),
          ],
        ),
      ),
    );
  }
}
