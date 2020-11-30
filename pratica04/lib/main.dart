import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  imagem(color,image){
    return(
      Container(
        width: 500,
        height: 500,
        color:color,
        child:Image.network(image),
      )
    
    );
  }
  build(context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black,
        body:Center(
          child:ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [                 
                  imagem(Colors.yellow,"https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI"),
                  imagem(Colors.blue,"https://images.pexels.com/photos/5450829/pexels-photo-5450829.jpeg?cs=srgb&dl=pexels-ike-louie-natividad-5450829.jpg&fm=jpg")
                 
                ],
              )
            ],
          )
        )
      )
    );
  }
}
