import 'package:flutter/material.dart';

void main() async {
  runApp(Contador());
}

class Contador extends StatefulWidget {
  ContadorState createState() {
    return ContadorState();
  }
}

class ContadorState extends State<Contador> {
  int numero=0;
  int  par=0;
  int quantidadePar=1;
  
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Pagina Inicial")),
        body: Center(
          child:Container(
            width:double.infinity,
            height: 70,            
            child: Column(
              children: [
                Text("Numero de vez que foi pressionado  $numero"),
                Text("esse numero e Par =$par"),
                Text("Quantidade de numero pares =$quantidadePar"),
              ],
            ),
          )
        ),
        floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
          onPressed:(){           
              numero++;    
               setState((){
              if(numero%2==0){
                par=numero;
                quantidadePar++;
              }
            });
          },
        ),
      ),
    );
  }
}