import 'package:flutter/material.dart';
import 'package:pratica17/CalculoFinanceiro.dart';

class Rotamoeda1 extends StatefulWidget{
  Rotamoeda1State createState(){
    return Rotamoeda1State();
  }
}

class Rotamoeda1State extends State<Rotamoeda1>{  
  TextEditingController controller1=TextEditingController();
  double reias;
  double numero1;
  build(context){
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),                
              ),
            ),            
          ),

          RaisedButton.icon(
            icon: Icon(
              Icons.arrow_back_ios,
              textDirection: TextDirection.rtl,
              color: Colors.white,
            ),
            label: Text("Proximo",style: TextStyle(
              color: Colors.white
            ),),
            onPressed: (){
             setState(() {
               reias=double.parse(controller1.text);
             });
             Navigator.pushNamed(context,"/rota2",arguments: CalculoFinanceiro(reias,0.0));
            },
            color: Colors.blue,
          ),
                 
        ],
      ),
    );
  }
}