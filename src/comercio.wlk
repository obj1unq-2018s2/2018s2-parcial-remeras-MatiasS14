// No esta bueno que los pedidos esten aqui.
// Pero lo que te baja la nota es que esten en ambos lados
// Los pedidos, y que solo los registras aqui.
// por lo que todo los mensajes sobre pedidos en colecciones
// trabajan sobre una coleccion vacia.
class Comercio {

	var pedidos = #{}
	var sucursales

	method registrarPedido(pedido) {
		pedidos.add(pedido)
	}
	
	// Esto no funciona, estas usando filter que maneja booleanos
	// con precio final, que deberia ser un numero.
	method totalFacturado() = pedidos.filter{ pedido => pedido.precioFinal() }.sum()

	method totalFacturado(sucursal) = pedidos.filter{ pedido => pedido.sucursal() == sucursal }.sum()

	method pedidosDeRemeraColor(color) = pedidos.count{ pedido => pedido.modeloRemera().color() == color }

	method pedidoMasCaro() = pedidos.max{ pedido => pedido.precioFinal() }

	// incompleto
	method tallesNoComprados() {
	}

	method sucursalQueMasFacturo() = sucursales.max{ sucursal => sucursal.recaudacionTotal() }

	// incompleto
	method sucursalVendioTodosLosTalles() {
	}

}

