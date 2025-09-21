import 'package:flutter/material.dart';
// import 'package:mi_app/src/pages/app.dart';
import 'package:mi_app/src/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mini proyecto',
      home: SplashScreen(),
    );
  }
}
