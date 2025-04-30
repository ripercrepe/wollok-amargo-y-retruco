import cartas.*

object juego{

    var property cantidadDeManos = 1
    const property cartas = []
    var property indiceCartasMax = 39

    method jugar(){

    }
    
    method crearCartas(){
        // creamos las 40 cartas de la baraja, sin 7 ni 8
        const palos = [espadas, bastos, oros, copas]
        // primero del 1 al 7
        // por cada palo, creamos un rango y por cada numero del rango creamos una carta con el palo y el numero
        palos.forEach({palo => 
        (1..7).forEach({numero => cartas.add(new Carta(palo = palo,numero = numero, puntaje = numero))})
        })
        // luego del 10 al 12
        palos.forEach({palo => 
        (10..12).forEach({numero => cartas.add(new Carta(palo = palo,numero = numero, puntaje = numero))})
        })
    }

    method reducirIndiceCartas() {
        indiceCartasMax -= 1
    }
    method restablecerIndiceCartas() {
        indiceCartasMax = 39
    }
    method limpiarCartas() = cartas.removeAll(cartas)
    
    method asignarPuntajeCadaCarta() = cartas.forEach({carta => carta.asignarPuntajeInicial()})
    method cantidadDeCartas() = cartas.size()


}

object envido{

    method jugarEnvido(jugador1,jugador2){     
        if(self.tomarPuntosMaximosDeCartas(jugador1) > self.tomarPuntosMaximosDeCartas(jugador2)){
            jugador1.sumarPuntos(1)
        }
        else if(self.tomarPuntosMaximosDeCartas(jugador2) > self.tomarPuntosMaximosDeCartas(jugador1)){
            jugador2.sumarPuntos(1)
        }
    }

    method tomarPuntosMaximosDeCartas(jugador){
        // de las cartas que sean del mismo palo, sumamos sus puntajes y los añadimos a una lista.
        // nos quedamos con el maximo de los puntajes
        const puntajes = []
        puntajes.add(self.cartasEspadasSinFiguras(jugador).sum({carta => carta.numero()}))
        puntajes.add(self.cartasOrosSinFiguras(jugador).sum({carta => carta.numero()}))
        puntajes.add(self.cartasCopasSinFiguras(jugador).sum({carta => carta.numero()}))
        puntajes.add(self.cartasBastosSinFiguras(jugador).sum({carta => carta.numero()}))
        return puntajes.max() + 20
    }

    // metodos para saber si es figura
    method esFigura(carta) = (self.es10(carta) || self.es11(carta) || self.es12(carta)) 
    method es10(carta) = carta.numero() == 10
    method es11(carta) = carta.numero() == 11
    method es12(carta) = carta.numero() == 12

    // agrupamos las cartas que sean del mismo palo
    method cartasEspadas(jugador) = jugador.mano().filter({carta => carta.palo() == espadas})
    method cartasOros(jugador) = jugador.mano().filter({carta => carta.palo() == oros})
    method cartasCopas(jugador) = jugador.mano().filter({carta => carta.palo() == copas})
    method cartasBastos(jugador) = jugador.mano().filter({carta => carta.palo() == bastos})
    // agrupamos las que cuentan en realidad
    method cartasEspadasSinFiguras(jugador)  = self.cartasEspadas(jugador).filter({carta => !self.esFigura(carta)})
    method cartasOrosSinFiguras(jugador)  = self.cartasOros(jugador).filter({carta => !self.esFigura(carta)})
    method cartasCopasSinFiguras(jugador)  = self.cartasCopas(jugador).filter({carta => !self.esFigura(carta)})
    method cartasBastosSinFiguras(jugador)  = self.cartasBastos(jugador).filter({carta => !self.esFigura(carta)})
    // agregar cuando no tenes 2 cartas del mismo palo
    // ver que onda cuando tenes 3

}

object truco{
   // crear metodos de truco
}


