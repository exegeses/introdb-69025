# Modificación de la estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreActual nombreNuevo tipo; 

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        CHANGE nombre producto varchar(45) not null;

## Cambiar tipo de dato

    ALTER TABLE nombreTabla  
        MODIFY nombreCampo tipo;

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        MODIFY nombre varchar(100) not null;

## Agregar columna al final de la tabla

    ALTER TABLE nombreTabla  
        ADD nombreCampo tipo características;

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        ADD descripcion varchar(500) not null;

## Agregar columna nueva luego de una columna existente

    ALTER TABLE nombreTabla  
        ADD nombreCampo tipo características  
        AFTER nombreCampoExistente; 

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        ADD descripcion varchar(500) not null  
        AFTER precio;


## Eliminar columnas

    ALTER TABLE nombreTabla  
        DROP nombreColumna;

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        DROP descripcion;