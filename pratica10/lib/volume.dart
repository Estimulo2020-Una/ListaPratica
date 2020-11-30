import 'package:flutter/material.dart';

class Calculo extends StatefulWidget {
  CalculoState createState() {
    return CalculoState();
  }
}

class CalculoState extends State<Calculo> {
  TextEditingController valor1 = TextEditingController();
  TextEditingController valor2 = TextEditingController();
  TextEditingController valor3 = TextEditingController();
  double resultado;

  build(context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Calculando Volume")),
            body: Center(
                child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  color: Colors.black12,
                  child: TextField(
                    controller: valor1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Comprimento"),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  color: Colors.black12,
                  child: TextField(
                    controller: valor2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Largura"),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.black12,
                  child: TextField(
                    controller: valor3,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Altura"),
                  ),
                ),
                RaisedButton(
                  onPressed:(){
                    setState((){
                      resultado=double.tryParse(valor1.text)*double.tryParse(valor2.text)*double.tryParse(valor3.text);
                    });
                  },
                  child: Text("Calcular"),
                ),
                
                Container(
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.only(top:10),
                  padding: EdgeInsets.only(top:40),
                  color: Colors.black12,  
                  child: Text("O volume e :$resultado ",textAlign:TextAlign.center),
                )
                
              ],
            ))));
  }
}
