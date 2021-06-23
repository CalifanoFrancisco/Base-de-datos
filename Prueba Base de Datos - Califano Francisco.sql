/* 1 */
CREATE DATABASE libreria2;
USE libreria2;

/* 2 */
CREATE TABLE libros (
    ID_Libros         INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Titulo            VARCHAR(50) NOT NULL,
    Autor             VARCHAR(50) NOT NULL,
    Editorial         VARCHAR(50) NOT NULL,
    Precio            INT NOT NULL,
    Stock             INT NOT NULL,
    Fecha_lanzamiento DATE NOT NULL
);

CREATE TABLE ventas(
    Fecha_Venta DATE NOT NULL,
    ID_Libro    INT NOT NULL,
    Unidades    INT NOT NULL
);

INSERT INTO libros (Titulo,Autor,Stock,Precio,Fecha_lanzamiento,Editorial) VALUES
    ( "Matematica"                , "Pablo Effeberger"    , 10  , 1500 , "2020-02-02" , "Kapelusz"     ),
    ( "Mis cinco sentidos"        , "Carolina Micha"      , 7   , 1400 , "2019-02-05" , "Sudamericana" ),
    ( "El mono relojero"          , "Constantino Vigil "  , 12  , 800  , "2021-05-05" , "Atlántida"    ),
    ( "Redes Informáticas"        , "Miguel Dederkremer " , 5   , 1000 , "2019-11-01" , "Raduses"      ),
    ( "Freddy Mercury, biografía" , "Lesley Ann Jones "   , 5   , 2200 , "2018-06-05" , "Alianza"      );
    
INSERT INTO ventas (Fecha_Venta,ID_Libro,Unidades) VALUES
    ( "2021-05-04" , 4 , 5  ),
	( "2020-12-06" , 5 , 3  ),
	( "2021-05-03" , 3 , 10 ),
	( "2019-11-24" , 2 , 4  ),
	( "2018-05-03" , 1 , 6  );
    
/* 3  */ SELECT     *         FROM libros WHERE Stock>8;
/* 4  */ SELECT     *         FROM libros WHERE Stock<5 OR Stock=5;
/* 5  */ SELECT     *         FROM libros WHERE Precio BETWEEN 1000 AND 2000;
/* 6  */ SELECT Editorial     FROM libros WHERE Editorial LIKE "%a%";
/* 7  */ SELECT Editorial     FROM libros WHERE Editorial LIKE "S%";
/* 8  */ SELECT     *         FROM libros ORDER BY Fecha_lanzamiento;
/* 9  */ SELECT     *         FROM ventas ORDER BY Fecha_Venta DESC;
/* 10 */ SELECT SUM(Stock)    FROM libros;
/* 11 */ SELECT MAX(Precio)   FROM libros;
/* 12 */ SELECT MIN(Precio)   FROM libros;
/* 13 */ SELECT AVG(Precio)   FROM libros;
/* 14 */ INSERT               INTO ventas (Fecha_Venta,ID_Libro,Unidades) VALUES
		    ( "2021-05-03" , 4 , 5  ),
	        ( "2020-12-06" , 5 , 3  ),
	        ( "2021-05-03" , 3 , 10 ),
			( "2019-11-24" , 2 , 4  ),
	        ( "2018-05-03" , 1 , 6  );
		UPDATE Libros        SET Stock=Stock-6  WHERE ID_Libros=1;  /*Actualiza el Stock de libros*/
		UPDATE Libros        SET Stock=Stock-4  WHERE ID_Libros=2;
		UPDATE Libros        SET Stock=Stock-10 WHERE ID_Libros=3;
		UPDATE Libros        SET Stock=Stock-5  WHERE ID_Libros=4;
		UPDATE Libros        SET Stock=Stock-3  WHERE ID_Libros=5;

/* 15 */ SELECT      *       FROM libros WHERE ID_Libros=(SELECT ID_Libro FROM ventas WHERE Fecha_Venta="2021-05-03");
/* 16 */ SELECT      *       FROM ventas WHERE Fecha_Venta BETWEEN "2018-05-03" AND "2019-12-31" ORDER BY Fecha_Venta DESC;
/* 17 */ SELECT      *       FROM libros WHERE stock BETWEEN 4 AND 14 LIMIT 3;
/* 18 */ INSERT              INTO libros (Titulo,Autor,Stock,Precio,Fecha_lanzamiento,Editorial) VALUES ( "Sin Nombre" , "Nadie" , 10 , 0 , "2021-09-09" , "Ingsoc");
/* 19 */ UPDATE libros       SET Precio=1200 WHERE Titulo="Sin Nombre";
/* 20 */ SELECT AVG(Stock)   FROM libros WHERE Precio>(SELECT AVG(Precio) FROM libros) OR Precio=(SELECT AVG(Precio) FROM libros);
/* 21 */ ALTER TABLE libros  ADD COLUMN ISBN INT NOT NULL;
/* 22 */ SELECT Editorial,Titulo,Precio FROM libros WHERE ID_Libros=(SELECT ID_Libro FROM ventas WHERE Unidades=(SELECT MIN(Unidades) FROM ventas));
/* 23 */ SELECT Stock,Titulo  FROM Libros WHERE ID_Libros=(SELECT ID_Libro FROM ventas WHERE Fecha_Venta=(SELECT MAX(Fecha_Venta) FROM ventas));  
