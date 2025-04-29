import cartas.*
import juego.*

class Jugador {
    const property mano = []
    var property puntos = 0

    method repartirCartaMano(){
         
        mano.add(self.indiceDeCartas(self.numeroAleatorioEntre1y40()))
        juego.cartas().remove(self.indiceDeCartas(self.numeroAleatorioEntre1y40()))
      
    }

    method tamañoMano() = mano.size()
    method indiceDeCartas(indice) = juego.cartas().get(indice)
    method numeroAleatorioEntre1y40() = 0.randomUpToMax(39)
}

const jugadorPrincipal = new Jugador()
const contricanteNiño = new Jugador()
const contricanteJoven = new Jugador()
const contricanteAdulto = new Jugador()
const contricanteViejo = new Jugador()
