class CalculoFinanceiro{
  double reias;
  double dolar;

  CalculoFinanceiro(reias,dolar){
    this.reias=reias;
    this.dolar=dolar;
    calcularCambio();
  }

  getReais(){
    return reias;
  }

  calcularCambio(){
    return(
      this.reias/this.dolar
    );
  }
  
}