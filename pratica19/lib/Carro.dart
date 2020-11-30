import 'package:flutter/material.dart';
import 'package:pratica19/PaginaLayout.dart';

class Carro extends StatelessWidget{
  Estado modelo=Estado();
  build(context) {
    return MaterialApp(
     home: Scaffold(
       appBar: modelo.cabecalho(context,"Carro"),
       body: modelo.corpo(context,Icons.directions_car),
     ),
    );
  }
}
