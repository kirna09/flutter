import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final List<String> _clasesPokemon = [
    'Normal',
    'Fighting',
    'Flying',
    'Posion',
    'Ground',
    'Rock',
    'Bug',
    'Ghost',
    'Steel',
    'Fire',
    'Water',
    'Grass',
    'Electric',
    'Psychic',
    'Ice',
    'Dragon',
    'Dark',
    'Fairy',
    'Unknown',
    'Shadow',
    '--------',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 10 - Pokedex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: _clasesPokemon.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_clasesPokemon[index]),
            leading: CircleAvatar(
              radius: 16.0,
              backgroundImage: NetworkImage(
                'https://image.flaticon.com/icons/png/512/188/188918.png',
              ),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          );
        },
      ),
    );
  }
}
