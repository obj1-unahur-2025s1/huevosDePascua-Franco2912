object huevoRepostero {
      
    method esDeChocolasteBlanco() = true
    method esDeChocolasteAmargo() = false
    method calorias() = 750 
}

object huevoMixto {

    method esDeChocolasteBlanco() = true
    method esDeChocolasteAmargo() = false
    method calorias() = 900
}

object conejo {
    var property peso = 100 

    method esDeChocolasteBlanco() = false
    method esDeChocolasteAmargo() = true
    method calorias() = peso * 10    
}

object blisterHuevitos {
    var property cantidadHuevitos = 6

    method esDeChocolasteBlanco() = cantidadHuevitos >= 5
    method esDeChocolasteAmargo() = false
    method calorias() = 100 * cantidadHuevitos  + 150 * cantidadHuevitos.div(5) 
}

object matrioshka {
    var property huevoInterior = huevoRepostero
    var property decoracion = arbol 

    method esDeChocolasteBlanco() = huevoInterior.esDeChocolasteBlanco()
    method esDeChocolasteAmargo() = true
    method calorias() = 3000 + huevoInterior.calorias() + decoracion.calorias()  

}

object arbol{
    method esDeChocolasteBlanco() = false
    method esDeChocolasteAmargo() = false
    method calorias() = 150
}

object flor{
    var property cantidadPetalos = 5 

    method esDeChocolasteBlanco() = false
    method esDeChocolasteAmargo() = false
    method calorias() = 100 * cantidadPetalos
}


