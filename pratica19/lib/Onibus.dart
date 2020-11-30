import 'package:flutter/material.dart';
import 'package:pratica19/PaginaLayout.dart';

class Onibus extends StatelessWidget{
  Estado modelo=Estado();
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar:modelo.cabecalho(context,"Onibus") ,
        body: modelo.corpo(context, Icons.directions_bus),
      ),
    );
  }
}