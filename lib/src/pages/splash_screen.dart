import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 2000),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/luffy.jpg',
              width: 100,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
