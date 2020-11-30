import 'package:flutter/material.dart';
import 'package:pratica19/PaginaInicial.dart';

void main() {
  runApp(InicialState());
}

class InicialState extends StatefulWidget{
  Home createState(){
    return Home();    
  }
}

class Home extends State<InicialState>{
  build(context){
    return MaterialApp(
      home:PaginaInicial()
    );
  }
}

