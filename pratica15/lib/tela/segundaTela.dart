import 'package:flutter/material.dart';

class SegundaRota extends StatefulWidget {
  SegundaRotaState createState() {
    return SegundaRotaState();
  }
}

class SegundaRotaState extends State<SegundaRota> {
  build(context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Segunda Rota"),
          ),
          body: Center(
            child: Column(
              children: [
                RaisedButton(
                  child: Text("Ir para a primeira Rota"),
                  onPressed: () {
                    Navigator.pop(context, "Deus e fiel");
                  },
                )
              ],
            ),
          )),
    );
  }
}
