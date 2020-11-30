import 'package:flutter/material.dart';

class Componente extends StatelessWidget {
  cabecalho(titulo) {
    return (AppBar(
      title: Text(titulo),
    ));
  }

  botao(context, rota1) {
    return (Container(
      width: double.infinity,
      height: 50,
      child: Container(
          width: 50,
          height: 50,
          color: Colors.white,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, rota1);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black26,
            ),
            iconSize: 50,
          )),
    ));
  }

  botoes(context,rota1,rota2) {
    return (Container(
      width: double.infinity,
      height: 50,
      child: Row(
        //deixa um espaco entre os obejetos
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, rota1);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              textDirection: TextDirection.rtl,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, rota2);
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    ));
  }

  quantidadeRota(context,quantidadeRota,rota1,rota2){
    if(quantidadeRota==1){
      return botao(context, rota1);
    }else{
      return botoes(context, rota1, rota2);
    }
  }

  baner(context,numero,quantidaRota,rota1,rota2){
     return (Center(
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(50),
            child: Text(
              numero,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 70, 160, 77),
              shape: BoxShape.circle,
            ),
          ),
          //navegador(context,quantidadeRota,nomeRota1,nomeRota2)
          quantidadeRota(context,quantidaRota,rota1, rota2)
        ],
      ),
    ));
  }

  build(context) {}
}
