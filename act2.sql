create database act2;
use act2;

create table articulos (
    Codigo_Art  INT NOT NULL,
    Descripcion VARCHAR(50),
    Precio      INT NOT NULL,
    Stock       INT NOT NULL
);

create table facturas (
    Codigo_fac INT NOT NULL,
    Fecha      DATE NOT NULL,
    Descuento  INT NOT NULL,
    IVA        INT NOT NULL
);

CREATE TABLE pueblos (
    Codigo_pueblo INT NOT NULL,
    Nombre        VARCHAR(50)
);

CREATE TABLE clientes (
    codigo_Pueblo INT NOT NULL,
    Nombre        VARCHAR(50),
    Codigo_Postal INT NOT NULL
);

CREATE TABLE vendedores (
    Codigo_Vendedor INT NOT NULL,
    Nombre          VARCHAR(50)
);

INSERT INTO articulos (Codigo_Art,Descripcion,Precio,Stock) VALUES
    (100,"Arvejas"  ,200,10),
    (200,"Choclo"   ,300,20),
    (300,"Chocolate",400,30);
    
INSERT INTO facturas (Codigo_fac,Fecha,Descuento,IVA) VALUES
    (120001,"2020-08-12",50,25),
	(130002,"2020-09-13",0,28),
    (140003,"2020-10-14",0,16),
    (130002,"2020-11-15",75,78);
    
INSERT INTO pueblos (Codigo_pueblo,Nombre) VALUES
	(1111,"Baradero"    ),
	(4444,"Peru"        ),
    (5555,"Nuevatlantis"),
	(9999,"MarDelPlata" );
    
INSERT INTO clientes (codigo_Pueblo,Nombre,Codigo_Postal) VALUES
    (1111,"Ernesto",120001),
    (4444,"Martin" ,130002),
    (9999,"Matias" ,140003);
    
INSERT INTO vendedores (Codigo_Vendedor,Nombre) VALUES
    (120001,"Esteban"),
    (130002,"Menem"),
    (140003,"ABBA");
    
/*a */ SELECT Codigo_Art,Descripcion FROM articulos  WHERE Precio=(SELECT MAX(Precio)                 FROM articulos);
/*b */ SELECT Codigo_Art,Descripcion FROM articulos  WHERE Precio>(SELECT AVG(Precio)                 FROM articulos); 
/*c */ SELECT Codigo_fac,Fecha       FROM facturas   WHERE    IVA=(SELECT MAX(IVA)                    FROM facturas ) AND Descuento=(SELECT MAX(descuento) FROM facturas);
/*d */ SELECT Codigo_pueblo,Nombre   FROM pueblos    WHERE Codigo_pueblo     IN (SELECT Codigo_pueblo FROM clientes );
/*e */ SELECT Codigo_Vendedor,Nombre FROM vendedores WHERE Codigo_Vendedor   IN (SELECT Codigo_fac    FROM facturas WHERE IVA=16);
/*f */ SELECT Codigo_art             FROM articulos  WHERE Precio>(SELECT (MAX(precio)*100)/55        FROM articulos);
/*g */ SELECT Codigo_fac,Fecha       FROM facturas   WHERE Codigo_fac        IN (SELECT Codigo_Postal FROM clientes ) AND Descuento>0;  
/*e?*/ SELECT COUNT(Nombre)          FROM pueblos    WHERE Codigo_pueblo NOT IN (SELECT codigo_Pueblo FROM clientes );
/*f?*/ SELECT COUNT(Descripcion)     FROM articulos  WHERE  Stock>20 AND Precio>25;