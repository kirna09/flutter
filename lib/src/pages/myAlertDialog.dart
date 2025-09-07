import 'package:flutter/material.dart';

showAlertDialog(
  BuildContext context,
  String msg,
  String titulo,
  String botonOk,
  String botonCancel,
) {
  Widget btnCancelar = ElevatedButton(
    onPressed: () {},
    child: Text(botonCancel),
  );
  Widget btnOk = ElevatedButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: Text(botonOk),
  );
  AlertDialog alert = AlertDialog(
    title: Text(titulo),
    content: Text(msg),
    actions: [btnCancelar, btnOk],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
