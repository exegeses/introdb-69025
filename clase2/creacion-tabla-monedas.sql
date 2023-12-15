create table monedas
(
    id  tinyint unsigned auto_increment not null primary key,
    aprox float not null,
    exacto decimal(10,2) not null
);

-- inserción de datos
insert into monedas
    VALUES
        ( DEFAULT, 23, 39 ),
        ( DEFAULT, 39, 33.77 ),
        ( DEFAULT, 33.77, 99 ),
        ( DEFAULT, 99, 14.61 ),
        ( DEFAULT, 14.61, 23 );

-- ver tódos los registros
select * from monedas;

-- demostración
select SUM(exacto), SUM(aprox) from monedas;