import 'package:flutter/material.dart';

class Tema {
  ThemeData tema() {
    return (ThemeData(        
      primaryColor: Colors.green[300],
      accentColor: Colors.grey,
      secondaryHeaderColor: Colors.white,
      fontFamily: 'Georgia',
      buttonColor: Colors.orange,   
      brightness: Brightness.dark,
      textTheme: TextTheme(       
        bodyText1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255,210, 184, 217),
          fontFamily: 'arial'
        ),
      ),
    ));
  }
}

class Aplicativo extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Tema().tema(),
      debugShowCheckedModeBanner: false,      
      home: Scaffold(        
        appBar: AppBar(title: Text("Trabalhando com Temas")),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Center(
          child: Corpo(),
        ),
      ),
    );
  }
}

class Corpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Olá!", style: Theme.of(context).textTheme.bodyText1),
        RaisedButton(
          child: Text('Ok'),
          onPressed: () {
            print('Clicou no botão!');
          },
        ),
      ],
    );
  }
}
