// Aca te falto el descuento  que aporta esta remera.
class RemeraLisa {
	
	var property color 
	var property talle //num
	
	method precioPorTalle()= talle.precioTalle()
	
	method costo()= self.precioPorTalle()  + color.precioColor(self)
		
		
}

// Aca te falto el descuento  que aporta esta remera.
class RemeraBordada inherits RemeraLisa{
	var  cantidadDeColores=0
	
	override method costo()= super() + cantidadDeColores * 10.max(20)
}

// Aca te falto el descuento  que aporta esta remera.
class RemeraSublimada inherits RemeraLisa{

	var dibujo
	
	method superficieDibujo()= dibujo.alto() * dibujo.ancho()
	
	override method costo()= super() + self.superficieDibujo() * 0.5 + dibujo.precioDerechoAutor() 
	
}