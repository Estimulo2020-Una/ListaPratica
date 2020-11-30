import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  Exercicio1State createState() {
    return Exercicio1State();
  }
}

class Exercicio1State extends State<Exercicio1> {
  String mensagem="deus e fel";
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela inicial 1"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(mensagem),
              RaisedButton(
                child: Text("Ir para a segunda Rota"),
                onPressed: () {
                  Navigator.pushNamed(context,"/tela2").then((resposta){
                    setState(() {
                      mensagem=resposta;
                    });
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
