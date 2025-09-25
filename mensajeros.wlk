import destinos.*
import paquetes.*

object roberto {
  var vehiculo = bicicleta

  method cambiarVehiculo(unVehiculo){
    vehiculo = unVehiculo
  }
  method puedeLlamar() = false
  var pesoPropio = 100
  method peso(unPeso) {
    pesoPropio = unPeso
  }
  method pesoTotal(){
    return pesoPropio + vehiculo.pesoExtra()
  }
  method puedeEntregarPaquete(unPaquete){
    return unPaquete.estaPago() and unPaquete.destino().puedePasar(self)
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
  method puedeEntregarPaquete(unPaquete){
    return unPaquete.estaPago() and unPaquete.destino().puedePasar(self)
  } 
  
}

object neo{
  method pesoTotal() = 0 
  var tieneCredito = true
  method credito(unValor){
    tieneCredito = unValor
  }
  method puedeLlamar() =tieneCredito
  method puedeEntregarPaquete(unPaquete){
    return unPaquete.estaPago() and unPaquete.destino().puedePasar(self)
  } 
}


