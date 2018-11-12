// Esta bien que los pedidos se encuentren aqui
class Sucursal{
	const property pedidos	
	const property minimoParaDescuento
	const property descuentoQueOtorga
	
	method otorgaDescuento(pedido)= pedido.cantidadDeRemeras() == minimoParaDescuento	
	
	method recaudacionTotal()= pedidos.sum{ped => ped.precioFinal()}
}
