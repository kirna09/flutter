import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListViewPage(),
    );
  }
}
