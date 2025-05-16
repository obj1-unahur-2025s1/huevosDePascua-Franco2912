import huevosDePascua.*
import terreno.*

object ana {
    const property huevosConsumidos = []

    method comer(unHuevo) {
    huevosConsumidos.add(unHuevo)    
    }
  
    method estaEnfermo() = self.caloriasConsumidas() > 5000 || self.comioChocolateBlanco()

    method caloriasConsumidas() = huevosConsumidos.sum({h=>h.calorias()})

    method comioChocolateBlanco() =  huevosConsumidos.any({h=>h.esDeChocolasteBlanco()})

}

object jose {
    var ultimoHuevoComido = huevoRepostero

    method comer(unHuevo) {
    ultimoHuevoComido = unHuevo    
    }
  
    method estaEnfermo() = ultimoHuevoComido.esDeChocolasteAmargo()
}

object tito {
    const property huevosConsumidos = []

    method comer(unHuevo) {}
    method estaEnfermo() = false

}