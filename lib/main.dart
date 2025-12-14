import 'package:flutter/material.dart';
import 'package:mi_app/src/src/listview_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: ListViewPage());
  }
}
