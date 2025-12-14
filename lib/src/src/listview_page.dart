import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mi_app/src/data/movies.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Map<String, dynamic>> pelis = [...movies];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practicaa 17 - Dismissed'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: pelis.length,
        itemBuilder: (BuildContext context, int index) {
          final item = pelis[index];
          return Slidable(
            key: Key(item['title_name']),
            // Left side actions (start)
            startActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) => onDismissed(index, 'Agregar'),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  icon: Icons.library_add,
                  label: 'Agregar',
                ),
              ],
            ),
            // Right side actions (end)
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) => onDismissed(index, 'Eliminar'),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Eliminar',
                ),
              ],
            ),
            child: ListTile(
              title: Text(item['title_name']),
              subtitle: Text(item['Genres']),
            ),
          );
        },
      ),
    );
  }

  onDismissed(int index, String accion) {
    setState(() {
      final snackBar = SnackBar(content: Text('Accion: $accion'));
      pelis.removeAt(index);
      switch (accion) {
        case 'Agregar':
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          break;
        case 'Eliminar':
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          break;
      }
    });
  }
}
