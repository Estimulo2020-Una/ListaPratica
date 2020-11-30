import 'package:flutter/material.dart';
import 'package:pratica17/CalculoFinanceiro.dart';
import 'package:pratica17/RotaMoeda3.dart';

class Rotamoeda2 extends StatefulWidget{
 
  Rotamoeda2State createState(){
    return Rotamoeda2State();
  }
}

class Rotamoeda2State extends State<Rotamoeda2>{ 
  TextEditingController controller2=TextEditingController();
  double valor2;  
  build(context){
    CalculoFinanceiro reias=ModalRoute.of(context).settings.arguments;
    double valor1=reias.getReais();
    return MaterialApp(     
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context,Rotamoeda3());
            },
          ),
        ),
        body:Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),
                        
            RaisedButton.icon(              
              color: Colors.blue,
              label:Text(
                "Proximo",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              icon:Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                textDirection: TextDirection.rtl,
              ),
              onPressed: (){
                setState(() {
                  valor2=double.parse(controller2.text);
                });
                Navigator.pushNamed(context,"/rota3",arguments:CalculoFinanceiro(valor1,valor2));
              },              
            )
          ],
        )
      ),
    );
  }
}