import 'package:flutter/material.dart';
import 'package:pratica19/PaginaLayout.dart';

class Barco extends StatelessWidget{
  Estado modelo=Estado();
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar:modelo.cabecalho(context,"Barco") ,
        body:modelo.corpo(context,Icons.directions_boat),
      ),
    );
  }
}