import 'package:flutter/material.dart';

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  rota(icone1,titulo,subtitulo,nomeRota,icone2) {
    return (
      ListTile(
        leading: Icon(icone1),
        title: Text(titulo),
        subtitle: Text(subtitulo),
        trailing: Icon(icone2),
        onTap:(){
          Navigator.pushNamed(context,nomeRota);
        } ,
      )
    );
  }

  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Primeira rota"),
        ),
        drawer:Container(          
            color: Colors.amber,
            child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                accountName: Text("Norberto"),
                accountEmail: Text("norbertojunio@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              rota(Icons.home,"Rota 02","Siga para rota 02.","/segunda",Icons.arrow_forward),
              rota(Icons.home,"Rota 03","Siga para rota 03.","/terceira",Icons.arrow_forward),
              rota(Icons.home,"Rota 01","Siga para rota 01.","/",Icons.arrow_forward),
            ],
          ),
          ),
          body: Center(
            child: Text("corpo"),
          ),
        ),
    );
  }
}
