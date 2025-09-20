import 'package:flutter/material.dart';

class sliderPage extends StatefulWidget {
  @override
  _sliderPageState createState() => _sliderPageState();
}

class _sliderPageState extends State<sliderPage> {
  double valor = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            color: Colors.black,
            child: Slider(
              value: valor,
              min: 0,
              max: 400,
              label: valor.round().toString(),
              divisions: 100,
              onChanged: (value) {
                setState(() {
                  valor = value;
                });
              },
            ),
          ),
          Container(
            width: 400,
            height: 500,
            color: Colors.black,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/luffy.jpg'),
                height: valor,
                width: valor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
