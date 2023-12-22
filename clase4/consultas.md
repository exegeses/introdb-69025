# Consultas en SQL

## Consultas a server
> Instrucciones vistas

    -- listar bases de datos  
    SHOW DATABASES;

    -- listar tablas dentro de un base de datos  
    SHOW TABLES;

    -- mostrar la estructura de una tabla  
    DESCRIBE destinos;

> La palabra reservada más importante o al menos 
> la más utilizada es la palabra SELECT

    -- mostrar la base de datos activa  
    SELECT DATABASE();

## Consultas a tablas

> Para realizar consultas a una tabla utilizamos la palabra reservada **SELECT** acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;

    SELECT * FROM regiones; 

    SELECT * FROM destinos; 

> Si queremos traer los datos de **algunas** columnas de una tabla tenemos que mencionar los nombres de las columnas separadas por comas
 
    SELECT nombreColumna3, nombreClumna5    
      FROM nombreTabla;

> Ejemplo práctico:

    SELECT aeropuerto, precio  
      FROM destinos;

### Orden de resultados

> Para ordenar los resultados de una consulta utilizamos la palabra reservada **ORDER BY**

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY precio;

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY aeropuerto;

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio;

## Filtrado de resultados

> Filtrar registros significa traer solamente 
> los registros que cumplan con una condición dada

> Para implementar un filtro utilizamos la 
> palabra reservada **WHERE** seguida de una condición

> Traer todos los destinos con un precio hasta 8000

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8000;

> Traer todos los destinos 
> con un precio entre 6600 y 8000
 
    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio >= 6600  
       AND precio <= 8000; 

> Traer todos los destinos 
> de la region 5

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 5;

> Traer todos los destinos
> de la region 3 y de la región 5

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 3
      OR idRegion = 5;

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion IN( 3, 5 );


