# Vistas

-- Una vista es una consulta
-- que podemos almacenar dentro de nuestra base de datos

/**## Parece una tabla independiente pero en realidad no lo es ##**/

CREATE VIEW consulta_precios
    AS
    SELECT
        idProducto AS id,
        prdNombre AS Producto,
        prdPrecio AS Contado,
        prdPrecio * 1.05 AS Lista,
        mkNombre AS Marca,
        catNombre AS Categoría
      FROM productos
         JOIN marcas
          ON productos.idMarca = marcas.idMarca
         JOIN categorias
          ON productos.idCategoria = categorias.idCategoria;
