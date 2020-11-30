import 'package:flutter/material.dart';
import 'package:pratica18/tela/primeiraRota.dart';
import 'package:pratica18/tela/segundaRota.dart';
import 'package:pratica18/tela/terceiraRota.dart';

void main() {
  runApp(Rota());
}

class Rota extends StatelessWidget{
  build(context){
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>PrimeiraRota(),
        "/segunda":(context)=>SegundaRota(),
        "/terceira":(context)=>TerceiraRota()
      },
    );
  }
}