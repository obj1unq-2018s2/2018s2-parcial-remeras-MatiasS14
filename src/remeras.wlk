class RemeraLisa {
	
	var property color 
	var property talle //num
	
	method precioPorTalle()= talle.precioTalle()
	
	method costo()= self.precioPorTalle()  + color.precioColor(self)
		
		
}

class RemeraBordada inherits RemeraLisa{
	var  cantidadDeColores=0
	
	override method costo()= super() + cantidadDeColores * 10.max(20)
}

class RemeraSublimada inherits RemeraLisa{
	var altoDibujo
	var anchoDibujo
	var dibujo
	
	method superficieDibujo()= altoDibujo * anchoDibujo
	
	override method costo()= self.superficieDibujo() * 0.5 + dibujo.precioDerechoAutor() 
	
}