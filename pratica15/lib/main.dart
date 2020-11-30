import 'package:flutter/material.dart';
import 'package:pratica15/tela/primeiraTela.dart';
import 'package:pratica15/tela/segundaTela.dart';
import 'package:pratica15/tela/Tela1Exercicio.dart';
import 'package:pratica15/tela/Tela2Exercicio .dart';


void main() {
  runApp(Rota());
}

// class Rota extends StatelessWidget{
//   build(context){
//     return MaterialApp(
//       initialRoute: "/",
//       routes: {
//         "/":(context)=>PrimeiraRota(),
//         "/tela2":(context)=>SegundaRota()
//       },
//     );
//   }
// }


class Rota extends StatelessWidget{
  build(context){
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>Exercicio1(),
        "/tela2":(context)=>Exercicio2(),
      },
    );
  }
}
