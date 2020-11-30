import 'package:flutter/material.dart';
import 'package:pratica17/CalculoFinal.dart';
import 'package:pratica17/Home.dart';
import 'package:pratica17/RotaMoeda3.dart';

void main() {
  runApp(MeuApp());
}


class MeuApp extends StatelessWidget{ 
  build(context){
    return MaterialApp(
      routes:{        
        "/rota2":(context)=>CalculoFinal(), 
        "/rota3":(context)=>Rotamoeda3(),      
      },
      home: Home(),
    );
  }
}