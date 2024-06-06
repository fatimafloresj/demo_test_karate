  #language: es

  Feature: Comprar producto de Ebay
  Como un usuario de Ebay
  Quiero buscar un producto
  Para poder comprarlo

  @EbayCompras
  Scenario: Agregar producto existente.
  Dado que me encuentro en la página de Ebay
  Y ingreso el producto deseado "<producto>"
  Y hago click en el boton buscar
  Y selecciono el tamaño de la Ram:"<Tamaño de Ram>"
  Y selecciono el procesador:"<Procesador>"
  Y selecciono la capacidad de la SSD:"<Capacidad SSD>"
  Y selecciono una caracteristica del producto:"<Caracteristicas>"
  Y selecciono su sistema operativo:"<Sistema Operativo>"
  Y agrego primer producto al carrito de compras
  Y doy click en el boton Agregar al Carrito de compras
  Entonces valido existencia del producto en el carrito de compras