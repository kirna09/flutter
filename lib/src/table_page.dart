import 'dart:math';

import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 18 - Orientacion'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {},
          children: [
            TableRow(
              children: [RectangleLarge(), RectangleMedium(), RectangleSmall()],
            ),
            TableRow(
              children: [RectangleLarge(), RectangleMedium(), RectangleSmall()],
            ),
            TableRow(
              children: [RectangleLarge(), RectangleMedium(), RectangleSmall()],
            ),
          ],
        ),
      ),
    );
  }
}

class RectangleLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}

class RectangleMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.green),
    );
  }
}

class RectangleSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(color: Colors.yellow),
    );
  }
}
