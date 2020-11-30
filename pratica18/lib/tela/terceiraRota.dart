import 'package:flutter/material.dart';

class TerceiraRota extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context,"/");
            },
            icon: Icon(Icons.arrow_forward,textDirection:TextDirection.rtl,),
          ),
          title: Text("Terceira Rota"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.only(top: 100),
              child: Text("Terceira Rota",textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 50
                ),
              ),
            ),
            RaisedButton(
              onPressed: (){Navigator.pushNamed(context,"/");},
              color: Colors.blue,
              child: Text("Voltar para a primeira Rota",style: TextStyle(color:Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
