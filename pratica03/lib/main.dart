import 'package:flutter/material.dart';

void main() {
  runApp(new MeuApp());
}

class MeuApp extends StatelessWidget{
  String nome ="Norberto"; 
  String dia="\nHoje e Quinta-feira";
  
  build(context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: RichText(
           text: TextSpan(
             text:"ola,",             
             style: TextStyle(
               fontSize: 30,   
               backgroundColor: Colors.white,
               color: Colors.green           
             ),
             children:[
               TextSpan(
                 text:' $nome!',
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.blue,
                   backgroundColor: Colors.green
                 )
               ),

               TextSpan(
                 text:dia, 
                 style: TextStyle(
                   backgroundColor: Colors.yellow,
                   color: Colors.red
                 )                
               ),
               TextSpan(
                 text:' \nBom dia!',
                 style:TextStyle(
                   fontSize: 30,
                   backgroundColor: Colors.white,
                   color: Colors.green
                 )
               ),               
             ]
           )
          )
        ),
      ),
    );
  }
}