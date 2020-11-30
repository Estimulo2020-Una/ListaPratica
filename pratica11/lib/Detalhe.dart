import 'package:flutter/material.dart';
import 'package:pratica11/main.dart';

class Detalhe extends StatelessWidget{

  String tituloCabecalho;
  String titulo;
  String texto;

  Detalhe(tituloCabecalho,titulo,texto){
    this.tituloCabecalho=tituloCabecalho;
    this.titulo=titulo;
    this.texto=texto;
  }


  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("$tituloCabecalho"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 30,
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 5),
              child: Text("$titulo"),
            ),
            Container(
              width: double.infinity,
              height: 400,
              child: Text("$texto"),
            )
          ],
        ),
        floatingActionButton: IconButton(
          onPressed: (){
            Navigator.pop(context,MyAppState());
          },
          icon: Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}