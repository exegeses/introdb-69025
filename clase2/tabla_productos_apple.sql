# Creación de tabla productos_apple

CREATE TABLE productos_apple
(
    id smallint unsigned auto_increment not null primary key,
    nombre varchar(45) unique not null,
    precio decimal( 10, 2 ) unsigned not null,
    stock smallint unsigned not null
);