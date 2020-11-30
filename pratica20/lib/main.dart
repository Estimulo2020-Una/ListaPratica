import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyAppState createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int indice=0;
  String imagem="https://images.unsplash.com/photo-1547721064-da6cfb341d50";

  selecionar(int indice){
    setState(() {
      this.indice=indice;     
    });
  }

  image(){
    if(indice==1){
      return Image.network('https://flutter.io/images/catalog-widget-placeholder.png');
    }
    if(indice==2){
      return Image.network('https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500');
    }
    return(
      Image.network("https://images.unsplash.com/photo-1547721064-da6cfb341d50")
    );
  }

  build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          //child: Text("${indice}"),
          child: image(),         
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex:indice,  
          onTap: selecionar,                  
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text("girafa"),
             backgroundColor:Colors.black,                          
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.business),
             title: Text("b")
           ),
           BottomNavigationBarItem(
             icon: IconButton(
               onPressed:(){
                 setState(() {
                   indice=2;
                 });
                 Navigator.pushNamed(context,"/terceira");
               },
               icon:Icon(Icons.warning),
             ),
             title: Text("c"),             
           )
         ],
        ),
      ),
    );
  }
}