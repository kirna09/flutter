import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:mi_app/src/pdfpreview.dart';
import 'package:mi_app/ui/details_container.dart';
import 'package:mi_app/ui/head_container.dart';

class DetailsPage extends StatelessWidget {
  var datosName;
  var datosGender;
  String? datosImage;
  String? _path;

  DetailsPage({this.datosName, this.datosGender, this.datosImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(datosName + ' Details'),
        backgroundColor: Color(0xFFFF422C),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF272A3C),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            MyHeadContainer(imagerec: datosImage),
            MyDetailsContainer(nom: datosName, sexo: datosGender),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffff422c),
        child: Icon(Icons.print_outlined),
        onPressed: () {
          _downloadImage();

          Future.delayed(
            Duration(milliseconds: 3000),
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PdfPage(
                  nombre: datosName,
                  genero: datosGender,
                  imagenurl: _path,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _downloadImage() async {
    try {
      String? imageId = await ImageDownloader.downloadImage(datosImage!);
      _path = await ImageDownloader.findPath(imageId!);
    } catch (error) {
      print(error);
    }
  }
}
