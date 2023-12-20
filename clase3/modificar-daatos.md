# Modificación de datos de una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTable  
        SET  nombreColumna = valor,  
             nombreColumna2 = valor2,  
             nombreColumna3 = valor3 
      WHERE colID = valorID;

> Ejemplo práctico:

    UPDATE personas  
        SET apellido = 'Gonzáles'    
      WHERE id = 2;  

    UPDATE personas  
        SET nombre = 'Vanessa',  
            dni = 35741952,  
            alta = '206-06-20'  
      WHERE id = 3;  

    UPDATE productos  
        SET precio = precio * 1.05  
      WHERE idProveedor = 6;


    UPDATE destinos  
      SET idRegion = 7  
      WHERE idDestino = 5  
      OR idDestino = 6;  

    UPDATE destinos  
      SET idRegion = 7  
      WHERE idDestino IN( 5, 6 ); 

