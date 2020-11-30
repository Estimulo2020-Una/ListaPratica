import 'package:flutter/material.dart';

class MeuApp extends StatefulWidget{
  MeuAppState createState(){
    return MeuAppState();
  }
}

class MeuAppState extends State<MeuApp>{
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  int soma;
  double resultado=0;
  
  build(context){
    return MaterialApp(
      home:Scaffold(
        body:Container(
          width: double.infinity,
          height: 500,
          //color:Colors.black12,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
             Container(
              width: 80,
              height: 80,  
               padding: EdgeInsets.all(30),
              child: Text("${resultado}",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white
              ),),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                color: Colors.green,                
              ),
             ),
             Container(
               width: double.infinity,
               height: 50,
               color: Colors.yellow,  
               child:  TextField(
                 controller: n1,
               decoration: InputDecoration(
                  border: OutlineInputBorder()
               ),
              ),   
             ),
              
             Container(
               width: double.infinity,
               height: 50,
               color: Colors.yellow,  
               margin: EdgeInsets.only(top:10),
               child:  TextField(
                 controller: n2,
               decoration: InputDecoration(
                  border: OutlineInputBorder()
               ),
              ),   
             ),
              
              Container(
               width: double.infinity,
               height: 50,
               color: Colors.yellow,  
               margin: EdgeInsets.only(top:10),
               child:RaisedButton(
                onPressed: (){
                  setState((){
                    resultado=double.parse(n1.text)/double.parse(n2.text);
                  });
                },
                 child: Text("Dividir"),
               )   
             ),
              
              Container(
               width: double.infinity,
               height: 50,
               color: Colors.yellow,  
               margin: EdgeInsets.only(top:10),
               child:RaisedButton(
                onPressed:(){
                  setState((){
                    resultado=double.parse(n1.text)*double.parse(n2.text);
                  });
                },
                 child: Text("Multiplicar"),
               )   
             ),
              
              Container(
               width: double.infinity,
               height: 50,
               color: Colors.yellow,  
               margin: EdgeInsets.only(top:10),
               child:RaisedButton(
                onPressed: (){
                  setState((){
                    resultado=double.parse(n1.text)-double.parse(n2.text);
                  });
                },
                 child: Text("Subtrair"),
               )   
             ),
              
               Container(
               width: double.infinity,
               height: 50,
               color: Colors.yellow,  
               margin: EdgeInsets.only(top:10),
               child:RaisedButton(
                onPressed: (){
                  setState((){
                    resultado=double.parse(n1.text)+double.parse(n2.text);
                  });
                },
                 child: Text("Somar"),
               )   
             ),
              
            ],
          ),
        )
      )
    );
  }
}