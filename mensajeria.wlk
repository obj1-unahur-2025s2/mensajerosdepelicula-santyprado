import paquetes.*
object empresaMensajeria {
  const mensajeros = []
  const paquetesPendientes = []
  const paquetesEnviados = []
  method paquetesEnviados() = paquetesEnviados
  method paquetesPendientes() = paquetesPendientes 
  method mensajeros() = mensajeros
  method contratarMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }
  method despedirMensajero(unMensajero) {
    mensajeros.remove(unMensajero)
  }
  method despedirTodosLosMensajeros(){
    mensajeros.clear()
  }
  method esGrande(){
    return mensajeros.size()>2
  } 
  method paquetePuedeSerEntregadoPorPrimerMensajero(unPaquete){
    return mensajeros.first().puedeEntregarPaquete(unPaquete)
  }
  method pesoDelUltimoMensajero() {
    return mensajeros.last().pesoTotal()
  } 
  method paquetePuedeSerEntregado(unPaquete){
    return mensajeros.any({p =>p.puedeEntregarPaquete(unPaquete)})
  }
  method mensajerosQuePuedenLlevarPaquete(unPaquete){
    return mensajeros.filter({p =>p.puedeEntregarPaquete(unPaquete)})
  }
  method tieneSobrepeso(){
    return 500 < mensajeros.map({m=>m.pesoTotal()}).sum()/mensajeros.size()
  } 
  method enviarPaquete(unPaquete){
    if(self.paquetePuedeSerEntregado(unPaquete)) paquetesEnviados.add(unPaquete) else paquetesPendientes.add(unPaquete)
  }
  method facturacionTotal(){
    return paquetesEnviados.sum({p =>p.precio()})
  }
  method enviarPaquetes(conjuntoDePaquetes){
    return conjuntoDePaquetes.forEach({p =>self.enviarPaquete(p)})
   }
  method enviarPaquetePendienteMasCaro() {
        if(self.paquetePuedeSerEntregado(self.paquetePendienteMasCaro())) {
            self.enviarPaquete(self.paquetePendienteMasCaro())
            paquetesPendientes.remove(self.paquetePendienteMasCaro())
        }
    }

   method paquetePendienteMasCaro() {
        return paquetesPendientes.max({p => p.precio()})
    }
}