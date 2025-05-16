import huevosDePascua.*
import chicos.*
object terreno{
    const property huevosEscondidos = [] //[huevoRepostero, huevoMixto, conejo, blisterHuevitos, matrioshka]

    method esconderHuevos(listaDeHuevos) = huevosEscondidos.addAll(listaDeHuevos) 

    method cantidadHuevosPorBuscar() = huevosEscondidos.size() 
    method cantidadHuevosBlancosPorBuscar() = huevosEscondidos.count({e=> e.esDeChocolasteBlanco()})

    method huevoAunSinEncontrar(unHuevo) = huevosEscondidos.contains(unHuevo)

    method mandarUnChicoBuscarUnHuevo(unChico, unHuevo) {
         if(huevosEscondidos.huevoAunSinEncontrar(unHuevo)){
           unChico.comer(unHuevo)
           huevosEscondidos.remove(unHuevo)
         }     
    } 

    method mandarUnChicoBuscarElPrimerHuevo(unChico) {
         if(!huevosEscondidos.isEmpty()){
           self.mandarUnChicoBuscarUnHuevo(unChico, huevosEscondidos.first())
           unChico.comer(huevosEscondidos.first())
           huevosEscondidos.remove(huevosEscondidos.first()) 
         }     
    }

    method encontrarTodosLosHuevosPor(unChico) =  huevosEscondidos.forEach({h => self.mandarUnChicoBuscarUnHuevo(unChico, h)})

    method losDeChocolateBlanco() = huevosEscondidos.filter({h=>h.esDeChocolateBlanco()}) 

    method huevoMayorCalorias() = huevosEscondidos.filter({h=>h.calorias()}).max() 
}