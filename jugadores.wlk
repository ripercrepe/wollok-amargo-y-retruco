import cartas.*
import juego.*

class Jugador {
    const property mano = []
    var property puntos = 0

    method repartirCartaMano(){
        var indice = self.numeroAleatorioEntre1yMax()
        juego.reducirIndiceCartas()
        self.añadirCartaAMano(indice)
        self.removerCartaEnIndice(indice)
      
    }

    method tamañoMano() = mano.size()
    method indiceDeCartas(indice) = juego.cartas().get(indice)
    method numeroAleatorioEntre1yMax() = 0.randomUpTo(juego.indiceCartasMax()).round()
    method añadirCartaAMano(indice) = mano.add(self.indiceDeCartas(indice))
    method removerCartaEnIndice(indice) = juego.cartas().remove(self.indiceDeCartas(indice))
    method limpiarMano() = mano.removeAll(mano)

    // este metodo pone la carta para jugarse
    method ponerCarta() = mano.get(0)
    method sumarPuntos(_puntos) {puntos += _puntos} 

}

const jugadorPrincipal = new Jugador()
const oponenteNiño = new Jugador()
const oponenteJoven = new Jugador()
const oponenteAdulto = new Jugador()
const oponenteViejo = new Jugador()
