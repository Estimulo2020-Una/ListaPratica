import 'package:flutter/material.dart';

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  String mensagem = '';
  build(context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                Text(mensagem),
                RaisedButton(
                  child: Text("Ir para a segunda Rota"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/tela2").then((resposta) {
                      setState(() {
                        mensagem = resposta;
                      });
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}
