import 'package:flutter/material.dart';
import 'package:pratica17/CalculoTemperatura.dart';

class Home extends StatefulWidget{
  HomeState createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{
  TextEditingController controllerC=TextEditingController();
  double f;
  build(context){
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controllerC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:OutlineInputBorder()
              ),
            ),
          ),
          
          RaisedButton(
            onPressed: (){
              setState(() {
                f=double.parse(controllerC.text);
              });
              Navigator.pushNamed(context,"/rota2",arguments: CalculoTemperatura(f));
            },
            child: Text(
              "Converte",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}