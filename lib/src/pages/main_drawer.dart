import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/15079328?v=4',
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 10),
                Text('Kirna09', style: TextStyle(fontSize: 20)),
                SizedBox(height: 5),
                Text('kirna09@example.com', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home, color: Colors.deepPurple),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.deepPurple),
            title: Text('Configuración'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.deepPurple),
            title: Text('Salir'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
