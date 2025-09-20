import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/page1.dart';
import 'package:mi_app/src/pages/page2.dart';
import 'package:mi_app/src/pages/page3.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 02',
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page1': (context) => Page1(),
        '/page2': (context) => page2(),
        '/page3': (context) => page3(),
      },
    );
  }
}
