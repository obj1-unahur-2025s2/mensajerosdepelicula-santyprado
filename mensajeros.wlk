object roberto {
  var vehiculo = bicicleta
  method puedeLlamar() = false
  var pesoPropio = 100
  method peso(unPeso) {
    pesoPropio = unPeso
  }
  method pesoTotal(){
    return pesoPropio + vehiculo.pesoExtra()
  }
}
object bicicleta{
  method pesoExtra()=5
}
object camion{
  var acoplados = 1
  method acoplados(unNumero){
    acoplados = unNumero
  }
  method pesoExtra(){
    return 500 * acoplados
  }
}

object chuckNorris{
  method pesoTotal() = 80
  method puedeLlamar()=true 
}

object neo{
  method pesoTotal() = 0 
  var tieneCredito = true
  method credito(unValor){
    tieneCredito = unValor
  }
  method puedeLlamar() =tieneCredito
}

object paquete {
  var estaPagado = false
  method pagado(unValor){
    estaPagado = unValor
  }
  method estaPago()=estaPagado
}