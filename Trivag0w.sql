CREATE DATABASE trivag0w;
use trivag0w;

CREATE TABLE reservas (
	ID_alojamiento 		int not null,
	ID_cliente 			INT not null,
	Paquete_de_viaje  	varchar(50) not null,
	Fecha_de_inicio 	date not null,
	Fecha_de_fin 		date not null,
	Personas  	        int not null,
	Lugar 				varchar(50) not null,
	Cant_de_dias 		int not null,
	Cant_de_noches 		int not null,
	Precio 				int not null,
	Cant_de_excurisiones int not null,
    Tipo_de_viaje varchar(50) not null
	);

CREATE TABLE clientes (
	ID 			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Apellido 	varchar(50) not null,
    Nombre 		varchar(50) not null,
    Direccion 	varchar(50) not null,
    DNI 		int(8) not null,
    Telefono 	int(10) not null,
    Celular 	int(10) not null
);

CREATE TABLE alojamientos (
	ID 				INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre 			varchar(50) not null,
    Categoria 		varchar(50) not null,
    Direccion 		varchar(50) not null,
    Telefono 		int not null,
    Cant_de_personas int not null,
    Cant_de_pisos 	int not null
);

INSERT INTO reservas (ID_alojamiento,ID_cliente,Paquete_de_viaje,Fecha_de_inicio,Fecha_de_fin,Personas,Lugar,Cant_de_dias,Cant_de_noches,Precio,Cant_de_excurisiones,Tipo_de_viaje) VALUES 
	(1  , 10 ,"Premium pack" , "1999-01-01" , "1999-00-11" , 5 , "Peronia"	 , 10 , 9 , 1500 , 1 , "Aereo"	),
    (2  , 11 ,"Economico"    , "2020-02-01" , "2020-00-06" , 8 , "Argentina" , 5  , 5 , 2000 , 8 , "Bus"	),
    (3  , 12 ,"Normal"       , "2020-03-01" , "2020-00-08" , 2 , "Cordoba"	 , 7  , 7 , 880  , 5 , "Barco"	),
    (4  , 13 ,"Cheto"        , "2017-04-01" , "2017-00-09" , 3 , "Bariloche" , 8  , 7 , 1821 , 5 , "Aereo"	),
    (5  , 14 ,"Normal"	     , "2017-05-02" , "2017-00-11" , 2 , "Himalaya"	 , 9  , 8 , 9184 , 4 , "Bus"	),
    (6  , 15 ,"Normal" 		 , "2020-06-01" , "2020-00-09" , 2 , "Peru"		 , 8  , 7 , 5487 , 6 , "Barco"	),
    (7  , 16 ,"Normal"       , "2020-07-01" , "2020-00-11" , 2 , "Chad"		 , 10 , 9 , 7845 , 3 , "Aereo"	),
    (8  , 17 ,"Normal" 		 , "1999-08-01" , "1999-00-02" , 2 , "Guatemala" , 1  , 0 , 9948 , 0 , "Bus"	),
    (9  , 18 ,"Premium "     , "2020-09-01" , "2020-00-03" , 3 , "Peru"		 , 2  , 1 , 9978 , 1 , "Barco"	),
    (10 , 19 ,"Premium "     , "1999-10-01" , "1999-00-03" , 7 , "Bariloche" , 2  , 1 , 7855 , 0 , "Aereo"	);

INSERT INTO clientes (Apellido,Nombre,Direccion,DNI,Telefono,Celular) VALUES 
	("Menem"     , "Carlos" , "Estratosfera"   , 10000006 , 1410000060 , 1511112216 ),
	("Kirshner"  , "Kicilof" ,"Constituyentes" , 10000011 , 1410000011 , 1511112217 ),
	("Rodriguez" , "AASDdd" , "Gerli         " , 10000012 , 1410000012 , 1511112218 ),
	("Chinchon"  , "Mariel" , "Gerli         " , 10000013 , 1410000013 , 1511112219 ),
	("josejuan"  , "Jhonny" , "Berazatagui   " , 10000014 , 1410000014 , 1511112220 ),
    ("García"    , "Harbos" , "Berazatagui   " , 10000015 , 1411112215 , 1511112221 ),
	("Garciorela" , "Jose"  , "Constituyentes" , 10000016 , 1411112216 , 1511112222 ),
	("Gimenez" 	 , "LaMona" , "Gerli         " , 10000017 , 1411112217 , 1511112223 ),
	("Juarez"    , "Jose"   , "Gerli         " , 10000018 , 1411122180 , 1511112224 ),
	("Haez"      , "Filho"  , "Berazatagui   " , 10000019 , 1411222190 , 1511112225 );


INSERT INTO alojamientos (Nombre,Categoria,Direccion,Telefono,Cant_de_personas,Cant_de_pisos) VALUES 
	("Hernandito" 	, "6 estrellas" , "Gerli" 	, 12345678 , 10  , 4	),
	("Pizzeria" 	, "1 estrellas" , "Donovan" , 12345678 , 100 , 8	),
	("Los Hijos" 	, "2 estrellas" , "Gral" 	, 12345678 , 256 , 32	),
    ("De Violencia" , "0 estrellas" , "Chamizo" , 12345678 , 454 , 16	),
	("Rivas" 		, "0 estrellas" , "Donovan" , 12345678 , 178 , 48	),
    ("El peruano" 	, "4 estrellas" , "Chacarita",12345678 , 784 , 89	),
	("El enojado" 	, "3 estrellas" , "Boca Jr" , 12345678 , 875 , 100	),
	("Juli3p" 		, "5 estrellas" , "España" 	, 12345678 , 127 , 5	),
    ("Le Luthie"    , "5 estrellas" , "Orlando" , 12345678 , 124 , 6	),
	("AlInUan"      , "2 estrellas" , "Chamuzo" , 12345678 , 148 , 7	);

/* 5  */ SELECT*FROM clientes;
/* 6  */ SELECT*FROM clientes WHERE ID=6;

/* 7  */ SELECT apellido,nombre,telefono,celular FROM clientes WHERE apellido LIKE "Gar%";
/* 8  */ SELECT apellido,nombre,telefono,celular FROM clientes WHERE apellido LIKE "%ez";
/* 9  */ SELECT apellido,nombre,telefono,celular FROM clientes WHERE apellido LIKE "%ar%";

/* 10 */ UPDATE clientes SET direccion = "San Juan 1234" WHERE ID=10;

/* 11 */ DELETE FROM clientes WHERE ID=10;

/*12-a*/ SELECT Paquete_de_viaje			  FROM reservas WHERE Cant_de_excurisiones >3 ORDER BY Paquete_de_viaje;
/*12-b*/ SELECT Paquete_de_viaje,Cant_de_dias FROM reservas WHERE Cant_de_excurisiones >3 ORDER BY Cant_de_dias DESC;

/* 13 */ SELECT Paquete_de_viaje,precio,cant_de_dias FROM reservas WHERE Cant_de_dias=2 AND precio>6000.50;

/* 14 */ SELECT*FROM reservas WHERE personas>=2 AND Fecha_de_inicio BETWEEN "2017-05-01" AND "2017-05-10";

/* 15 */ DELETE FROM reservas WHERE ID_cliente=10;

/* 16 */ UPDATE alojamientos SET direccion="Belgrano 15897" WHERE ID=3;

/* 17 */ SELECT*FROM reservas WHERE Fecha_de_inicio BETWEEN "2017-04-01" AND "2017-04-30";

/* 18 */ DELETE FROM clientes WHERE ID=6;

/* 19 */ UPDATE reservas SET Paquete_de_viaje="Paquete Bariloche" WHERE lugar = "Bariloche";
		 UPDATE reservas SET Cant_de_dias=3  , Cant_de_noches=4   WHERE Paquete_de_viaje = "Paquete Bariloche" AND Cant_de_dias>7;
		 UPDATE reservas SET Cant_de_dias=10 , Cant_de_noches=11  WHERE Paquete_de_viaje = "Paquete Bariloche" AND Cant_de_dias<7;

/* 20 */ UPDATE reservas SET Cant_de_dias=7  , Cant_de_noches=8   WHERE Paquete_de_viaje = "Paquete Bariloche";






