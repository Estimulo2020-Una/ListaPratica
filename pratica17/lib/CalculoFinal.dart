import 'package:flutter/material.dart';
import 'package:pratica17/CalculoTemperatura.dart';
import 'package:pratica17/Home.dart';

class CalculoFinal extends StatelessWidget{

  build(context){
    CalculoTemperatura temperatura=ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context,Home());
            },
          ),
        ),
        body: Column(          
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Text("Graus Celsius ${temperatura.celsius}",textAlign: TextAlign.center,),
              padding: EdgeInsets.only(top:20),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Text("Graus Fahrenheit ${temperatura.getFahrenheit()} ",textAlign: TextAlign.center),              
            )
          ],
        ),
      ),
    );
  }
}
