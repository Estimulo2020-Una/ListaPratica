import 'package:flutter/material.dart';
import 'package:pratica19/Bicicleta.dart';
import 'package:pratica19/Carro.dart';
import 'package:pratica19/Barco.dart';
import 'package:pratica19/Onibus.dart';
import 'package:pratica19/Trem.dart';

class PaginaInicial extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.video_library),
        title: Text("Primeira Rota"),
      ),
      drawer: Drawer(
        child:Column(
          children: [
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=>Carro()));
              },
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=>Bicicleta()));
              },
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=>Barco()));
              },
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=>Onibus()));
              },
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=>Trem()));
              },
            )
          ],
        ),
      ),
      body: RaisedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=>Trem()));
        },
      ),
    );
  }
}
