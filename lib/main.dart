import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/shared_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Practica 11', home: SharedPage());
  }
}
