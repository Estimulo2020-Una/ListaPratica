import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  imagem(image){
    return(
      Container(
              width: double.infinity,
              height: 150,              
              child:Image.network(image)
            )      
    );
  }
  build(context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black,
        body:Column(
          children: [
            imagem("https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI"),
            imagem("https://flutter.dev/images/catalog-widget-placeholder.png"),
            Text("Google Flutter",style:TextStyle(
              color:Colors.blue,
              backgroundColor: Colors.white
            ))
            
          ],
        )
      )
    );
  }
}

