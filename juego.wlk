import cartas.*

object juego{

    var property cantidadDeManos = 1
    const property cartas = []
    var property indiceCartasMax = 39

    method mano(){

    }
    
    method crearCartas(){
        // creamos las 40 cartas de la baraja, sin 7 ni 8
        const palos = [espadas, bastos, oros, copas]
        // primero del 1 al 7
        // por cada palo, creamos un rango y por cada numero del rango creamos una carta con el palo y el numero
        palos.forEach({palo => 
        (1..7).forEach({numero => cartas.add(new Carta(palo = palo,numero = numero, puntaje = carta.calcularPuntaje(numero)))})
        })
        // luego del 10 al 12
        palos.forEach({palo => 
        (10..12).forEach({numero => cartas.add(new Carta(palo = palo,numero = numero, puntaje = carta.calcularPuntaje(numero)))})
        })
    }

    method reducirIndiceCartas() {
        indiceCartasMax -= 1
    }
    method restablecerIndiceCartas() {
        indiceCartasMax = 39
    }
    method limpiarCartas() = cartas.removeAll(cartas)
    // este ya no sirve mas pero lo dejamos x ahi.
    method asignarPuntajeCadaCarta() = cartas.forEach({carta => carta.asignarPuntajeInicial()})
    method cantidadDeCartas() = cartas.size()


}





object envido{
    // crear metodos de sumar puntaje
}

object truco{
   // crear metodos de truco
}


