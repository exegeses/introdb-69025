# Tablas proyecto catálogo

-- tabla marcas
CREATE TABLE marcas
(
    idMarca tinyint unsigned auto_increment primary key not null,
    mkNombre varchar(45) unique not null
);

-- tabla categorías
CREATE TABLE categorias
(
    idCategoria tinyint unsigned auto_increment primary key not null,
    catNombre varchar(45) unique not null
);

-- tabla productos
CREATE TABLE productos
(
    idProducto mediumint unsigned auto_increment primary key not null,
    prdNombre varchar(45) unique not null,
    prdPrecio decimal(8,2) unsigned not null,
    idMarca tinyint unsigned not null,
    foreign key ( idMarca ) references marcas ( idMarca ),
    idCategoria tinyint unsigned not null,
    foreign key ( idCategoria ) references categorias ( idCategoria ),
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean not null
);