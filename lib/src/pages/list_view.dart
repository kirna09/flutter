import 'package:flutter/material.dart';
import 'package:mi_app/src/pages/animated_page.dart';
import 'package:mi_app/src/pages/tween_page.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 16 - Animaciones'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Animated'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimatedPage()),
              );
            },
          ),
          ListTile(
            title: Text('Tween'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TweenPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
