import 'package:flutter/material.dart';
import 'package:pratica14/rota/componente/component.dart';

class Tela extends StatelessWidget{

  Componente componente=Componente();
  String titulo;
  String rota1; 
  String rota2;
  String numero;
  int numeroRota;
  

  Tela(titulo,numero,rota1,rota2,numeroRota){
    tituloCabecalho(titulo);
    setRota1(rota1);
    setRota2(rota2);
    setNumero(numero);
    setNumeroRota(numeroRota);
    
  }

  tituloCabecalho(titulo){
    this.titulo=titulo;
  }

  setRota1(rota1){
    this.rota1=rota1;    
  }

  setRota2(rota2){
    this.rota2=rota2;
  }

  setNumeroRota(numeroRota){
    this.numeroRota=numeroRota;
  }

  setNumero(numero){
    this.numero=numero;
  }

  corpo(context){
    return Scaffold(
      appBar:componente.cabecalho(this.titulo),     
      body: componente.baner(context,this.numero,this.numeroRota,this.rota1,this.rota2),
    );
  }

  build(context){
    
  }
}