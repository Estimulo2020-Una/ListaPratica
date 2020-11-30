import 'package:flutter/material.dart';
import 'package:pratica19/PaginaLayout.dart';

class Trem extends StatelessWidget{
  Estado modelo=Estado();
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: modelo.cabecalho(context,"Trem"),
        body: modelo.corpo(context, Icons.directions_railway),
      ),
    );
  }
}