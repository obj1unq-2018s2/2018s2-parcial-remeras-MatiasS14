class Comercio {
	var pedidos=#{}
	var sucursales
	
	method registrarPedido(pedido){ pedidos.add(pedido) }
	
	method totalFacturado()= pedidos.filter{ pedido=> pedido.precioFinal() }.sum()
	
	method totalFacturado(sucursal)=pedidos.filter{pedido=> pedido.sucursal()==sucursal}.sum()
	
	method pedidosDeRemeraColor(color)= pedidos.count{pedido=>
		
								                      pedido.modeloRemera().color()==color}
	
	method pedidoMasCaro()= pedidos.max{ pedido=> pedido.precioFinal() }
	
	method tallesNoComprados(){}
	
	method sucursalQueMasFacturo()= sucursales.max{ sucursal => sucursal.recaudacionTotal()}
	
	method sucursalVendioTodosLosTalles(){}
	
	
	
}
