import 'package:flutter/material.dart';
import 'package:pratica13/layout/telaLayout.dart';

void main() {
  runApp(Rota());
}

class Rota extends StatelessWidget{
  build(context){
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>Tela1(),
        "/tela2":(context)=>Tela2(),
        "/tela3":(context)=>Tela3(),
        "/tela4":(context)=>Tela4(),
      },
    );
  }
}

class Tela1 extends StatelessWidget{
  Modelo modelo=Modelo();
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: modelo.cabecalho("Tela 1"),
        body:modelo.corpo(context,"1",1,"/tela2","")
      ),
    );
  } 
}

class Tela2 extends StatelessWidget{
  Modelo modelo=Modelo();
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: modelo.cabecalho("Tela 2"),
        body:modelo.corpo(context,"2",2,"/","/tela3")
      ),
    );
  } 
}

class Tela3 extends StatelessWidget{
  Modelo modelo=Modelo();
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: modelo.cabecalho("Tela 3"),
        body:modelo.corpo(context,"3",2,"/tela2","/tela4")
      ),
    );
  } 
}

class Tela4 extends StatelessWidget{
  Modelo modelo=Modelo();
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: modelo.cabecalho("Tela 4"),
        body:modelo.corpo(context,"4",2,"/tela3","/")
      ),
    );
  } 
}

