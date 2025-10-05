import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/listview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Practica 10', home: ListPage());
  }
}
