cxfdsfsdfdsfdsfdfdsfdsddsadasdsadsgfdgdfgfdgdfgfdgCREATE DATABASE basededatos1;
USE basededatos1;

CREATE TABLE paquete_viaje (
    id_paquete_viaje INT(11),
    id_alojamiento   INT(11),
    Lugar            VARCHAR(50),
    Cant_Dias        INT,
    Cant_Noches      INT,
    Costo            FLOAT(10,2),
    Tipo_pension     VARCHAR(50),
    Cant_excursiones INT
);
CREATE TABLE cliente (
	id_cliente      INT(11),
    Apellido_Nombre VARCHAR(50),
    Direccion       VARCHAR(50),
    Telefono        INT(11),
    Celular         INT(11),
    DNI             INT(11)
);
CREATE TABLE pago (
	id_pago    INT(11),
    id_cliente INT(11),
    Tarjeta    INT(11),
    Cheque     INT(11),
    Efectio    INT(11),
    Monto      FLOAT(10,2)
);
CREATE TABLE alojamiento (
	id_alojamiento     INT(11),
    Nombre_alojamiento VARCHAR(50),
    Categoria          VARCHAR(50),
    Telefono           INT(11),
    Cant_personas      INT(11),
    Cocina_Cabaña      VARCHAR(50),
    Garage_Cabaña      VARCHAR(50),
    Parrilla_Cabaña    VARCHAR(50),
    Cant_pisos         INT(11),
    Bar_Restaurante    VARCHAR(50)
);
CREATE TABLE reservas (
	id_reservas INT(11),
    id_cliente INT(11),
    id_paquete_viaje INT(11),
    Fecha_Inicio DATE,
    Fecha_Fin DATE,
    Cant_personas INT(11)
);

/*1*/SELECT Lugar,Cant_Dias,Cant_Noches,Costo FROM paquete_viaje 
		INNER JOIN alojamiento ON paquete_viaje.Costo=alojamiento.Nombre_alojamiento
		WHERE costo    <= (SELECT AVG(costo)   FROM paquete_viaje) AND id_alojamiento IN (SELECT id_alojamiento   FROM paquete_viaje);
/*2*/ UPDATE paquete_viaje SET Cant_Dias=10    AND  Cant_Noches=9 WHERE costo                >= (SELECT AVG(costo)       FROM paquete_viaje);
/*3*/ SELECT id_paquete_viaje,Lugar,Costo      FROM paquete_viaje WHERE Costo                 > (SELECT AVG(Costo)       FROM paquete_viaje);
/*4*/ SELECT id_cliente                        FROM cliente       WHERE id_cliente       NOT IN (SELECT id_cliente       FROM pago         );
/*5*/ DELETE                                   FROM paquete_viaje WHERE id_paquete_viaje NOT IN (SELECT id_paquete_viaje FROM reservas     );
/*6*/ SELECT id_paquete_viaje,Lugar            FROM paquete_viaje WHERE id_paquete_viaje     IN (SELECT id_paquete_viaje FROM reservas     );

/*7 SELECT AVG(),MAX()MIN()
SELECT COUNT(id_cliente) FROM cliente WHERE id_cliente IN (SELECT id_cliente FROM reservas);	-- calcula cantidad de clientes que hicieron reservas
        

-- mostrar la cantidad maxima,minima y promedio de reservas efectuadas por un cliente teniendo en cuenta
-- la cantidad de reservas hechas por cada dliente
*/











