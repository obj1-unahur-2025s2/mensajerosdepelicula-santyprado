import mensajeria.*
import mensajeros.*
import destinos.*

object paquetito {
  var destino = laMatrix

  method destino(unDestino) {
    destino = unDestino
  }
  method destino()=destino
  method estaPago()= true
  method precio() = 0  

}

object paquete {
  var estaPagado = false
  var destino = puenteBrooklyn
  method pagado(unValor){
    estaPagado = unValor
  }
  method estaPago()=estaPagado
   method destino() = destino
  method destino(unDestino) {
    destino = unDestino
  }
  method precio() {
        return 50
  }
}

object paqueton {
  var importePagado = 0
  const destinos = []
  method precio(){
    return destinos.size() * 100
  } 
  method agregarDestino(unDestino) {
    destinos.add(unDestino)
  }
  method recibirPago(unPago){
    importePagado = (unPago + importePagado).min(self.precio()) 
  }
  method estaPago(){
    return importePagado == self.precio()
  } 
   method puedeSerEntregado(unMesajero) {
        return destinos.all({cadaDestinoDeLaLista => cadaDestinoDeLaLista.puedePasar(unMesajero)})
        && self.estaPago()
    }
    
}

