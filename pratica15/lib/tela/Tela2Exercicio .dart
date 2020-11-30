import 'package:flutter/material.dart';

class Exercicio2 extends StatefulWidget {
  Exercicio2State createState() {
    return Exercicio2State();
  }
}

class Exercicio2State extends State<Exercicio2> {

  TextEditingController valor1=TextEditingController();
  TextEditingController valor2=TextEditingController();
  int numero1;
  int numero2;
  int soma;
  String texto;
  
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 70,                
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: valor1,
                  onChanged:(valor1){
                    setState(() {
                      valor1=valor1;
                      numero1=int.parse(valor1);
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(gapPadding: 4),
                    labelText: "valor 1"
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,                
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: valor2,
                  onChanged:(valor2){
                    setState(() {
                      valor2=valor2;
                      numero2=int.parse(valor2);
                    });
                  } ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(gapPadding: 4),
                    labelText: "valor 2"
                  ),
                ),
              ),
              RaisedButton(
                child: Text("Calcular"),
                onPressed: (){
                  setState(() {
                    soma=numero1+numero2;
                    texto="${valor1.text}+${valor2.text}=$soma";
                    Navigator.pop(context,texto);
                  });
                },
              ),
              //Text("${valor1.text}+${valor2.text}=$soma"),
            ],
          ),
        ),
      ),
    );
  }
}
