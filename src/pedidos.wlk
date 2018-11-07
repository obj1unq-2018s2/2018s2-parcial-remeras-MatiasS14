class Pedido {
	const modeloRemera
	const cantidadDeRemeras
	const property sucursal
	var precioBasePedido
	
	method precioBase(){ precioBasePedido= modeloRemera.costo() * cantidadDeRemeras }
	
	method precioFinal()= if( self.tieneDescuento() ) { self.aplicarDescuento() }
						  
						  else{ self.precioBase() } 
	
	method tieneDescuento()= sucursal.otorgaDescuento(self)
	
	method aplicarDescuento(){ precioBasePedido -= sucursal.descuentoQueOtorga()}
	
	
}
