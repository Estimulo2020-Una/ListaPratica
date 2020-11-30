import 'package:flutter/material.dart';
import 'package:pratica19/PaginaInicial.dart';

class Estado {
  Icon icone;

  setIcone(a) {
    icone = Icon(
      a,
      size: 200,
      color: Colors.black12,
    );
  }

  cabecalho(contexto,titulo) {
    return AppBar(
      leading: IconButton(
        onPressed: (){
          Navigator.pop(contexto,MaterialPageRoute(builder: (BuildContext)=>PaginaInicial()));
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(titulo),
    );
  }

  corpo(contexto, icones) {
    setIcone(icones);
    return Column(
      children: [
        Container(width: double.infinity, height: 200, child: icone),
        Container(
          width: double.infinity,
          height: 40,
          color: Colors.blue,
          margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
          child: RaisedButton(
            child: Text(
              "voltar para primeira Rota",
              style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),
            ),
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(
                  contexto,
                  MaterialPageRoute(
                      builder: (BuildContext) => PaginaInicial()));
            },
          ),
        )
      ],
    );
  }
}
