  @amazoncompra
Característica: Agregar a carrito de compra producto de amazon
  Como un usuario de Amazon
  Quiero buscar un producto
  Para agregar al carrito de compra

    Esquema del escenario: Eliminar producto existente.
    Dado que me encuentro en la página de amazon
    Y registro el producto deseado "<producto>"
    Y doy click en el boton buscar
    Y selecciono un filtro "<filtro>"
    Y agrego el primer producto al carrito de compras
    Y doy click en el boton Carrito de compras
    Y doy click en el boton Eliminar
    Entonces valido la eliminacion del producto en el carrito de compras

    Ejemplos:
      | producto              | filtro                     |
      | huawei freebuds pro 3 | Elegible para Envío Gratis |