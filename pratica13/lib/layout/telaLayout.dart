import 'package:flutter/material.dart';

class Modelo {
  cabecalho(tituloCabecalho) {
    return (AppBar(
      title: Text(tituloCabecalho),
    ));
  }

  numeroTela(String numeroTexto) {
    return (Text(
      numeroTexto,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 50, color: Colors.white),
    ));
  }

  navegador(context, numeroRota,nomeRota1,nomeRota2) {
    if (numeroRota == 1) {
      return (Container(
        width: double.infinity,
        height: 50,
        child: Container(
            width: 50,
            height: 50,
            color: Colors.white,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, nomeRota1);
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black26,
              ),
              iconSize: 50,
            )),
      ));
    } else {
      return (Container(
        width: double.infinity,
        height: 50,
        child: Row(
          //deixa um espaco entre os obejetos
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, nomeRota1);
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                textDirection: TextDirection.rtl,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, nomeRota2);
              },
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ));
    }
  }

  corpo(context, numeroTela,quantidadeRota,nomeRota1,nomeRota2) {
    return (Center(
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(50),
            child: Text(
              numeroTela,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 70, 160, 77),
              shape: BoxShape.circle,
            ),
          ),
          navegador(context,quantidadeRota,nomeRota1,nomeRota2)
        ],
      ),
    ));
  }
}
