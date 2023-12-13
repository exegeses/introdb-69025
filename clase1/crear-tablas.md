# Crear tablas dentro de una base de datos

> Para crear una tabla utilizamos
> el comando **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla  
    ( 
        nombreColumna1 tipo características,  
        nombreColumna2 tipo características,  
        nombreColumna3 tipo características,  
        nombreColumna4 tipo características 
    );

> Ejemplo práctico: 

    CREATE TABLE personas  
    (  
        id tinyint unsigned auto_increment,   
        apellido varchar(45),   
        nombre varchar(45),   
        dni int unsigned unique,  
        alta date
    ); 