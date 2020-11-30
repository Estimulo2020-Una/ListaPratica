import 'package:flutter/material.dart';

void main() async {
  runApp(Imc());
}

class Imc extends StatefulWidget{
  ImcState createState(){
    return ImcState();
  }
}

class ImcState extends State<Imc>{
  TextEditingController valor1=TextEditingController();
  TextEditingController valor2=TextEditingController();
  double peso;
  double  altura;
  double resultado;
  
  mensagem(resultado){
    if(resultado==null){return Text("");}
    if(resultado<16){return Text("Magresagrave",textAlign:TextAlign.center,);}    
    if(resultado<17){return Text("Magreza moderada",textAlign:TextAlign.center);}    
    if(resultado<18.5){return Text("Magreza leve",textAlign:TextAlign.center);}    
    if(resultado<25){return Text("Saudavel",textAlign:TextAlign.center);}    
    if(resultado<30){return Text("Sobrepeso",textAlign:TextAlign.center);}    
    if(resultado<35){return Text("Obsesidade Grau I",textAlign:TextAlign.center);}   
    if(resultado<40){return Text("Obsesidade Grau II",textAlign:TextAlign.center);}   
    if(resultado>=40){return Text("Obsesidade Grau III",textAlign:TextAlign.center);} 
  }
    
  build(context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Cacular IMC"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 70,
                padding: EdgeInsets.all(10),                
                child:TextField(
                  controller: valor1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Peso"
                  )
                )
              ),
               Container(
                width: double.infinity,
                height: 70,
                padding: EdgeInsets.all(10),                
                child:TextField(
                  controller: valor2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:"Altura" 
                  )
                )
              ),
              RaisedButton(
                child:Text("Calcular IMC"),
                onPressed:(){
                  setState((){
                    peso=double.parse(valor1.text);
                    altura=double.parse(valor2.text);
                    resultado=peso/(altura*altura);
                  });
                },
              ),
              //Text("$resultado"),
              Container(
                width: double.infinity,
                height: 70,
                padding: EdgeInsets.only(top:25),
                margin: EdgeInsets.only(top:25),
                //color: Colors.black12,
                child: mensagem(resultado),
              )
            ],
          ),
        ),
      )
    );
  }
}