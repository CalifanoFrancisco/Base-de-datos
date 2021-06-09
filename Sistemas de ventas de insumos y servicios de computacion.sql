CREATE DATABASE ventas6;
USE ventas6;

CREATE TABLE clientes    (
	ID_cliente 	 INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre 		 VARCHAR(50) NOT NULL,
    Direccion 	 VARCHAR(50) NOT NULL,
    Telefono  	 INT NOT NULL,
    Celular   	 INT NOT NULL,
    Fax 		 INT NOT NULL,
    Mail 		 VARCHAR(50) NOT NULL,
    Website 	 VARCHAR(50) NOT NULL,
    Contacto 	 INT NOT NULL
); 
CREATE TABLE productos   (
	Codigo_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Descripcion 	VARCHAR(50) NOT NULL,
    Stock 			INT NOT NULL,
    Precio_unitario INT NOT NULL,
    Stock_minimo 	INT NOT NULL
); 
CREATE TABLE proveedores (
	ID_proveedor   	  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Cuil 			  INT NOT NULL,
    Razon_social 	  VARCHAR(50) NOT NULL,
    Direccion 		  VARCHAR(50) NOT NULL,
    Telefono 		  INT NOT NULL,
    Fax 			  INT NOT NULL,
    Mail			  VARCHAR(50) NOT NULL,
    Website			  VARCHAR(50) NOT NULL,
    Contacto		  INT NOT NULL
);
CREATE TABLE facturacion (
	ID_factura 	 INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Codigo		 INT NOT NULL,
    Producto 	 VARCHAR(50) NOT NULL,
    Cantidad     INT NOT NULL,
    Fecha		 DATE NOT NULL,
    ID_Proveedor INT NOT NULL
);

INSERT INTO clientes (Nombre,Direccion,Telefono,Celular,Fax,Mail,Website,Contacto) VALUES 
/*     NOMBRE   /DIRECCION /  TELEFONO  /   CELULAR   /    FAX     /       MAIL           /       WEBSITE       /  CONTACTO */
	( "Juan" 	, "Brazil" , 1500000000 , 160000000 , 1234567890 , "Juan@yahoo.com"     , "No tiene" 			, 1700000001 ),
	( "Jose" 	, "Ezeiza" , 1500000001 , 160000001 , 1234567891 , "Jose@yahoo.com"     , "no tiene" 			, 1700000002 ),
	( "Cruz" 	, "Peru"   , 1500000002 , 160000002 , 1234567892 , "Cruz@yahoo.com"     , "No tiene" 			, 1700000003 ),
	( "Santo" 	, "BsAs"   , 1500000003 , 160000003 , 1234567893 , "Santo@yahoo.com"    , "www.josegaming.com"  , 1700000004 ),
	( "Venito" 	, "Chad"   , 1500000004 , 160000004 , 1234567894 , "Venito@yahoo.com"   , "www.Venito.com" 	    , 1700000005 ),
	( "Peron" 	, "Bolivia", 1500000005 , 160000005 , 1234567895 , "Peron@yahoo.com"    , "www.Peron.com"		, 1700000006 ),
	( "Evita" 	, "Brazil" , 1500000006 , 160000006 , 1234567896 , "Evita@yahoo.com"    , "www.Evita.com" 	    , 1700000007 ),
	( "Menem" 	, "Bolivia", 1500000007 , 160000007 , 1234567897 , "Menem@yahoo.com"    , "www.Menem.com" 	    , 1700000008 ),
	( "Bizcocho", "Peru"   , 1500000008 , 160000008 , 1234567898 , "Bizcocho@yahoo.com" , "www.Bizcocho.com" 	, 1700000009 ),
	( "Aternos" , "Chad"   , 1500000009 , 160000009 , 1234567899 , "Aternos@yahoo.com"  , "www.Aternos.com" 	, 1700000010 );
                
INSERT INTO productos (Descripcion,Stock,Precio_unitario,Stock_minimo) VALUES
	( "Rico" 	 , 888  , 14  , 0 ),
	( "Feo"  	 , 1203 , 20  , 2 ),
	( "Pog" 	 , 56   , 8   , 2 ),
	( "No" 		 , 87 	, 78  , 2 ),
	( "Ehh"		 , 485 	, 150 , 0 ),
	( "Delicioso", 123 	, 45  , 0 ),
	( "Aburrido" , 324 	, 87  , 4 ),
	( "Caro" 	 , 556 	, 999 , 8 ),
	( "Barato" 	 , 48 	, 67  , 0 ),
	( "Rico" 	 , 2 	, 45  , 7 );
    
INSERT INTO proveedores (Cuil,Razon_social,Direccion,Telefono,Fax,Mail,Website,Contacto) VALUES
	( 12345678 , "Vender" , "Berazategui" , 1400000000 , 76543210 , "Jose@gmail.com" , "www.vender.com" 	, 1300000000 ),
	( 22345678 , "Vender" , "Peru"		  , 1400000001 , 76543211 , "Mati@gmail.com" , "www.productos.com", 1300000001 ),
	( 32345678 , "Vender" , "Alberdi"     , 1400000002 , 76543212 , "Pepe@gmail.com" , "www.plata.com" 	, 1300000002 ),
	( 42345678 , "Vender" , "Guatemala"   , 1400000003 , 76543213 , "Juan@gmail.com" , "www.comida.com" 	, 1300000003 ),
	( 52345678 , "Vender" , "Guatepeor"   , 1400000004 , 76543214 , "Atos@gmail.com" , "www.arvejas.com" 	, 1300000004 ),
	( 62345678 , "Vender" , "Guatebuena"  , 1400000005 , 76543215 , "Alvi@gmail.com" , "www.choclo.com" 	, 1300000005 ),
	( 72345678 , "Vender" , "Bariloche"   , 1400000006 , 76543216 , "Pato@gmail.com" , "www.manzana.com" 	, 1300000006 ),
	( 82345678 , "Vender" , "Chad"        , 1400000007 , 76543217 , "Peta@gmail.com" , "www.macacos.com" 	, 1300000007 ),
	( 92345678 , "Vender" , "Bariloche"   , 1400000008 , 76543218 , "Pita@gmail.com" , "www.sopa.com" 	, 1300000008 ),
	( 12345679 , "Vender" , "Peru"        , 1400000009 , 76543219 , "Pota@gmail.com" , "www.delicias.com" , 1300000009 );
    
INSERT INTO facturacion (Codigo,Producto,Cantidad,Fecha,ID_Proveedor) VALUES
	( 5555 , "Lata_arvejas" , 1 , "2017-04-01" , 1 ),
	( 4444 , "Lata_choclo"  , 2 , "2017-04-01" , 1 ),
	( 3333 , "Lata_alpiste" , 3 , "2017-04-01" , 2 ),
	( 2222 , "Lata_arvejas" , 4 , "2017-04-09" , 4 ),
	( 1111 , "Lata_arvejas" , 11 , "2017-04-01" , 5 ),
	( 0000 , "Lata_choclo"  , 7 , "2017-04-08" , 6 ),
	( 6666 , "Lata_arvejas" , 9 , "2017-04-01" , 7 ),
	( 7777 , "Lata_arvejas" , 7 , "2017-04-05" , 8 ),
	( 8888 , "Estratosfera" , 15 , "2017-04-01" , 5 ),
	( 9999 , "Lata_choclo"  , 3 , "2017-04-02" , 1 );

                
/* 2  */ SELECT*FROM productos   WHERE Stock_minimo >3;
/* 3  */ SELECT*FROM productos   WHERE Precio_unitario>20 AND Precio_unitario<100;
/* 4  */ SELECT*FROM clientes    WHERE Website!="No tiene";
/* 5  */ DELETE FROM proveedores WHERE ID_proveedor=10;
/* 6  */ UPDATE      proveedores SET   direccion = "San Martin 12345" WHERE ID_proveedor=3;
/* 7  */ SELECT Producto,Fecha        FROM facturacion  WHERE Fecha="2017-04-01";
/* 8  */ SELECT Producto,ID_Proveedor FROM facturacion  WHERE ID_Proveedor=1;
/* 9  */ SELECT Producto,Codigo,ID_Proveedor FROM facturacion WHERE ID_Proveedor=5 AND Cantidad>10;
/* 10 */ SELECT stock FROM productos;
/* 11 */ SELECT MAX(Precio_unitario) FROM productos;
/* 12 */ 
/* 13 */ SELECT MIN(Precio_unitario) FROM productos;
/* 14 */
/* 15 */ SELECT AVG(Precio_unitario) FROM productos;
/* 16 */ SELECT SUM(stock) FROM productos;
/* 17 */ SELECT SUM(stock) FROM productos WHERE Precio_unitario<AVG(Precio_unitario);
/* 17 */ SELECT SUM(stock) FROM productos WHERE Precio_unitario<Precio_unitario IN (SELECT AVG(Precio_unitario) FROM productos);





