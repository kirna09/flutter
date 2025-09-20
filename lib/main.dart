import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/home_page.dart'; // Add this import if HomePage is defined here

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Practica 01', home: HomePage());
  }
}
