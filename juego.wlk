import cartas.*

object juego{

    var property cantidadDeManos = 1
    const property cartas = []
    method mano(){
        
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
    method asignarPuntajeCadaCarta() = cartas.forEach({carta => carta.asignarPuntajeInicial()})
    method cantidadDeCartas() = cartas.size()


}

object envido{

}

object truco{

}


