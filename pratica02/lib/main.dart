import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(
    // Text("deus e fiel",
    //       //O texto flui da esquerda para a direita
    //       //textDirection: TextDirection.ltr,

    //       //O texto flui da direita para a esquerda
    //       textDirection: TextDirection.rtl,
    //     ),  
    new MeuApp()
          
  );
}

class MeuApp extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Norberto ferreira"),),
      ),
    );
  }
}
