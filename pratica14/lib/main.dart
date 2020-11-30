import 'package:flutter/material.dart';
import 'package:pratica14/rota/rota.dart';

void main() {
  runApp(Rota());
}

class Rota extends  StatelessWidget{
  build(context){
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>PrimeiraTela(),
        "/tela2":(context)=>SegundaTela(),
        "/tela3":(context)=>TerceiraTela(),
      },
    );
  }
}