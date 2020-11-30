import 'package:flutter/material.dart';
import 'package:pratica17/CalculoFinanceiro.dart';
import 'package:pratica17/RotaMoeda2.dart';

class Rotamoeda3 extends StatefulWidget{

  Rotamoeda3State createState(){
    return Rotamoeda3State();
  }
}

class Rotamoeda3State extends State<Rotamoeda3>{
  build(context){
    CalculoFinanceiro valorfinal=ModalRoute.of(context).settings.arguments;  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context,Rotamoeda2());
            },
          ),
        ),
        body: Center(
          child: Text(
            "${valorfinal.getReais()} = ${valorfinal.calcularCambio()}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green
            ),
          ),
        )
      ),
    );
  }
}