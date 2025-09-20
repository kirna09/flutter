import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/myAlertDialog.dart';

class DatosUsuarios extends StatefulWidget {
  @override
  _DatosUsuariosState createState() => _DatosUsuariosState();
}

class _DatosUsuariosState extends State<DatosUsuarios> {
  var _name;
  var _phone;
  final nameCtrl = new TextEditingController();
  final phoneCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/luffy.jpg'),
          SizedBox(height: 10.0),
          TextField(
            controller: nameCtrl,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'ingresa un nombre',
            ),
          ),
          TextField(
            controller: phoneCtrl,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'ingresa numero de celular',
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
            ),
            child: Text('Enviar'),
            onPressed: () {
              _name = nameCtrl.text;
              _phone = phoneCtrl.text;
              setState(() {
                showAlertDialog(
                  context,
                  'El usuario $_name, tiene un telefono $_phone',
                  'Mi app :3',
                  'ok',
                  ':c',
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
