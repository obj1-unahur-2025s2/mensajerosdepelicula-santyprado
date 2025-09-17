import mensajeros.*
object puenteBrooklyn{
    method puedePasar(mensajero){
        return mensajero.pesoTotal() <= 1000
    } 
}

object laMatrix{
    method puedePasar(mensajero){
        return mensajero.puedeLlamar()
    }
}