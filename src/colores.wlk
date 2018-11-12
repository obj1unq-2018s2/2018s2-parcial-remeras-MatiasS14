// No hacia falta la clase color asi, pero esta bueno si esta.
class Color {

	const coloresBasicos = #{ "blanco", "negro", "gris" }
	var property color

	method precioColor(remera) = if (self.esBasico()) {
		0
	} else {
		remera.talle().precioTalle() * 0.1
	}

	method esBasico() = coloresBasicos.contains(self.color())

}

