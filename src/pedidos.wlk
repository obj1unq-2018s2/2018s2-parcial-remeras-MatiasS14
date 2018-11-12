class Pedido {

	const modeloRemera
	const cantidadDeRemeras
	const property sucursal
	var precioBasePedido

	// OJO: Esto deberia ser una consulta y aca estas haciendo una
	// Asignacion. Esto esta mal.
	method precioBase() {
		precioBasePedido = modeloRemera.costo() * cantidadDeRemeras
	}

	// OJO: Esto deberia ser una consulta y aca estas haciendo una
	// Asignacion. Esto esta mal.
	method precioFinal() = if (self.tieneDescuento()) {
		self.aplicarDescuento()
	} else {
		self.precioBase()
	}

	// El descuento esta dado en las remeras, no deberia estar dado
	// en la sucursal.
	method tieneDescuento() = sucursal.otorgaDescuento(self)

	// OJO: Esto deberia ser una consulta y aca estas haciendo una
	// Asignacion. Esto esta mal.
	method aplicarDescuento() {
		precioBasePedido -= sucursal.descuentoQueOtorga()
	}

}

