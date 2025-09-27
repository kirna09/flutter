import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'practica 08',
      home: Scaffold(
        appBar: AppBar(
          title: Text('practica 08'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(color: Colors.white30),
        drawer: Drawer(child: MainDrawer()),
      ),
    );
  }
}
