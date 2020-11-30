import 'package:flutter/material.dart';
import 'package:pratica19/PaginaLayout.dart';

class Bicicleta extends StatelessWidget {
  Estado molde=Estado(); 
  build(context) {  
    return MaterialApp(
      home: Scaffold(
          appBar: molde.cabecalho(context,"Bicicleta"),
          body: molde.corpo(context,Icons.directions_bike)),
    );
  }
  
}
