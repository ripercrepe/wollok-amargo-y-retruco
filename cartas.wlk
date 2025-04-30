class Carta {
  const property palo // objetos palos
  const property numero // numero de la carta, valor del envido
  var property puntaje // valor real en el juego de truco

  method calcularPuntaje(numeroCarta) {
        // Implementa la lógica para asignar puntaje según el truco
        if (self.unoEspadas()) return 14      
        else if (self.unoBastos()) return 13
        else if (self.sieteEspadas()) return 12
        else if (self.sieteOros()) return 11
        else if (numeroCarta == 3) return 10
        else if (numeroCarta == 2) return 9
        else if (self.unoCopasOros()) return 8
        else if (numeroCarta == 12) return 7    // Rey 
        else if (numeroCarta == 11) return 6    // Caballo
        else if (numeroCarta == 10) return 5    // Sota
        else if (self.sieteCopasBastos()) return 4
        else if (numeroCarta == 6) return 3 
        else if (numeroCarta == 5) return 2
        else (numeroCarta == 4) return 1
    }


  method asignarPuntajeInicial() { puntaje = self.calcularPuntaje(numero)}   
  method sieteCopasBastos() = (numero == 7 && (palo == bastos || palo == copas))
  method sieteEspadas() = (numero == 7 && palo == espadas) 
  method sieteOros() = (numero == 7 && palo == oros) 
  method unoCopasOros() = numero == 1 && (palo == copas || palo == oros)
  method unoEspadas() = (numero == 1 && palo == espadas) 
  method unoBastos() = (numero == 1 && palo == bastos) 
  
}

class Palo{
}

const bastos = new Palo()
const espadas = new Palo()
const oros = new Palo()
const copas = new Palo()


