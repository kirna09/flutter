import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/tabs_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 06',
      home: TabsPage(),
    );
  }
}
