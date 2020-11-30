import 'package:flutter/material.dart';
import 'package:pratica11/Detalhe.dart';

void main(){
  runApp(MinhaRota());
}

class MinhaRota extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: MyAppState(),
    );
  }
}



class MyAppState extends StatelessWidget{ 
  imagem(context,tituloCabecalho,titulo,texto){
    return(
      Container(
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Detalhe(tituloCabecalho,titulo,texto)));
          },        
          child: Image.network("https://images.pexels.com/photos/5650041/pexels-photo-5650041.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ),
      )
    );
  }

  build(context){
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            imagem(context,"Nova york","Esse e  o titulo","Esse e o texto"),                        
          ],
        ),
    );
  }
}