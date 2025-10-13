import 'package:flutter/material.dart';
import 'dart:convert';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 12- Leer Json'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(
            context,
          ).loadString('assets/docs/pokedex.json'),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var pokedex = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemCount: pokedex.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(pokedex[index]['name']['english']),
                  subtitle: Text(pokedex[index]['type'].toString()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
