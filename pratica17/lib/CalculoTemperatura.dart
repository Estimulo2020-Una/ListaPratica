class CalculoTemperatura {
  double celsius;
  double fahrenheit;

  CalculoTemperatura(celsius){
    this.celsius=celsius;
    this.fahrenheit=calcularFahrenheit(celsius);
    
  }

  calcularFahrenheit(celsius){
    return(
      celsius*1.8+32
    );
  }

  getFahrenheit(){
    return this.fahrenheit;
  }

}