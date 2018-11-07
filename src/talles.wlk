import remeras.*
class Talle {
	const tallesChicos= new Range(32,40)
	var property talle
	
	method precioTalle()= if(tallesChicos.contains( self.talle() ) ) { 80 }
	
							else { 100 }

}

