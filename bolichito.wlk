import objetos.*
import personas.*
object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota

    method cambiarObjetoEnVidriera(nuevoObjeto) {
        objetoEnVidriera = nuevoObjeto
    }
    method cambiarObjetoEnMostrador(nuevoObjeto) {
        objetoEnMostrador = nuevoObjeto
    }

    method esBrillante() {
        return objetoEnVidriera.material().esBrillante() 
        && objetoEnMostrador.material().esBrillante()
    }

    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method tieneObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor 
        || objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        return self.esMonocromatico() || not self.estaEquilibrado()
    }

    method puedeOfrecerleAlgoA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) 
        || unaPersona.leGusta(objetoEnVidriera)
    }
}