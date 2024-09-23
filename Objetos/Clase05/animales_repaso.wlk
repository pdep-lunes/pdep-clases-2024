class Perro{

    var energia
    const juguetes = []

    method energia() = energia
  
    method comer(unosGramos) {
        energia += unosGramos / juguetes.size()
    }
    
    method estaFeliz(){
        return juguetes.contains("pelota")
      }

      method curar(){
        self.comer(50)
    }

    method perseguirA(unGato){

        energia -= 50
        juguetes.remove(juguetes.first())
        unGato.serPerseguido()
        
     }


}

class Caballo {
  var energia

  method energia() {
    return energia
  }

  method comer(unosGramos) {
    energia += 2 * unosGramos
  }

  method galopar(unaDistancia) {
    energia -= unaDistancia
  }

  method estaFeliz() = true

  method curar() {
    self.galopar(3)
		self.comer(3000)
		self.galopar(5)
  }
}

class Ave { 
    var energia
    var dondeEsta
  
    method energia() {
      return energia
    }
  
  
    method dondeEsta() {
      return dondeEsta
    }
  
    method comer(unosGramos) {
      energia += unosGramos / 2
    }
  
    method volarHacia(unaCiudad) {
      dondeEsta = unaCiudad
      energia /= 2
    }
  
    method estaFeliz() {
      return dondeEsta == "Lihuel Calel"
    }
  
    method curar() {
      self.volarHacia("Lihuel Calel")
    }
  }


  class Gato { 
    var energia
  
    method energia() = energia

  
    method comer(unosGramos) {
      energia += unosGramos
    }

  
    method estaFeliz() {
      return energia > 30
    }
  
    method curar() {
          self.comer(400)
      }
      
    method serPerseguido(){
    	energia -= 10
    }
   
  }

//Instancias
/*
const canela = new Perro(energia = 100, responsable = "Lu", juguetes = ["soga","pelota"])
const juana = new Perro(energia = 100, responsable = "Nico", juguetes = ["trapo","pelota","espatula"])
const nano = new Caballo(energia = 100, responsable = "Ro")
const pepita = new Ave(energia = 100, responsable = "Gus", dondeEsta = "General las Heras")
const kali = new Gato(energia = 100, responsable = "Dani")
*/