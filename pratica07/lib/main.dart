import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(ExercicioGirafa());
}

class MeuApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          width: 48,
          height: 48,
          color: Colors.amber[600],          
        ),
      )),
    );
  }
}

class MeuTexto extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Text(
            "Flutter",
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}

class MeuTextoCentro extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Text("flutter"),
          //coloca o texto no centro do container
          alignment: Alignment.center,
          color: Colors.black12,
        ),
      )),
    );
  }
}

class ContainerEspaco extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          width: 200,
          height: 100,
          margin: const EdgeInsets.all(10.0),
          child: Text("Flutter"),
          color: Colors.blue,
          alignment: Alignment.center,
        ),
      )),
    );
  }
}

class ContainerHeight extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text(
              "Flutter",
              style: TextStyle(fontSize: 30,color: Colors.white), 
            ),
            constraints: BoxConstraints.tightForFinite(width: 200),
            color: Colors.blue,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}

class Rotacao extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child:Text("Flutter",style: TextStyle(color: Colors.white),),
            //tudo dentro do container vai se alinhar ao centro
            alignment: Alignment.center,
            //rotaçao em radiano 
            transform:Matrix4.rotationZ(0.35),                      
          ),
        ),
      ),
    );
  }
}

class ContainerPading extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            padding: const EdgeInsets.all(10.0),
            child:Text("Flutter",style: TextStyle(color: Colors.white),),           
          ),
        ),
      ),
    );
  }
}

class ExemploPadding1 extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            padding: const EdgeInsets.only(left: 45,top: 20,right: 25,bottom:20 ),
            margin:const EdgeInsets.only(left: 95),
            child: Text("Flutter",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

class ExemploPadding2 extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(55.0),
            child: Text("Flutter",style: TextStyle(color: Colors.white),textDirection: TextDirection.ltr,),
          ),
        ),
      ),
    );
  }
}

class ContainerCirculo extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              shape:BoxShape.circle,
              color:Colors.blue
            ),
            padding: const EdgeInsets.all(40),
            margin: const EdgeInsets.all(25),
            //obs : interfere no tamanho
            child: Text("Flutter",textDirection: TextDirection.ltr,style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

class ExercicioGirafa extends StatelessWidget{
  build(context){
    return MaterialApp(
      home:Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow
            ),
            padding: const EdgeInsets.all(100),
            child:Image.asset('imagen/girafa.jpeg'),
          ),
        ),
      ) ,
    );
  }
}