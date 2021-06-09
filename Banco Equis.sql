CREATE DATABASE Banco_Equis3;
USE Banco_Equis3;

CREATE TABLE empleados (
	ID_Empleado     INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_Departamento INT NOT NULL,
    Puesto          VARCHAR(50) NOT NULL,
    Nombre          VARCHAR(50) NOT NULL,
    Apellido        VARCHAR(50) NOT NULL,
    DNI             INT NOT NULL,
    Salario         INT NOT NULL
);

CREATE TABLE departamentos (
	ID_Departamentos       INT NOT NULL,
    Nombre                 VARCHAR(50) NOT NULL,
    Cantidad_de_empleados  INT NOT NULL,
    Nombre_director        VARCHAR(50) NOT NULL
);

INSERT INTO empleados (ID_Departamento,Puesto,Nombre,Apellido,DNI,Salario) VALUES 
	( 1 , "Empleado" , "David"  , "Austin"    , 123456780 , 200 ),
	( 2 , "Empleado" , "Juli"   , "3P"        , 123456781 , 22  ),
	( 3 , "Empleado" , "Mustok" , "Rabino"    , 123456782 , 22  ),
	( 4 , "Empleado" , "Oliver" , "Jones"     , 123456783 , 40  ),
    ( 1 , "Conserje" , "Matías" , "Gonzalez"  , 123456784 , 28  ),
	( 2 , "Conserje" , "Josefe" , "Krakovski" , 123456785 , 89  ),
	( 3 , "Empleado" , "Raul"   , "YaNoYeAmo" , 123456786 , 100 ),
	( 4 , "Empleado" , "Matias" , "Bodoo"     , 123456787 , 45  ),
    ( 1 , "Subjefe"  , "Tomas"  , "Russo"     , 123456788 , 189 ),
	( 2 , "Empleado" , "David"  , "languila"  , 123456789 , 145 );

INSERT INTO departamentos (ID_Departamentos,Nombre,Cantidad_de_empleados,Nombre_director) VALUES 
	( 1 , "Ventas"    , 200 , "Nate Higgers"          ), 
	( 2 , "Marketing" , 78  , "Esteban Quito"         ),  
	( 3 , "Finanzas"  , 150 , "Elsa Bordel Encuentro" ),  
	( 4 , "Sistemas"  , 19  , "Juan Carlos Menem"     );

/* 4 */ SELECT*                    FROM empleados WHERE ID_Departamento=(SELECT ID_Departamentos FROM departamentos WHERE Nombre="Marketing");
/* 5 */ SELECT Nombre,Apellido,DNI FROM empleados WHERE Salario<(SELECT AVG(salario) FROM empleados);
/* 6 */ SELECT Nombre,Apellido,DNI FROM empleados WHERE Salario<(SELECT AVG(salario) FROM empleados) AND ID_Departamento=(SELECT ID_Departamentos FROM departamentos WHERE Nombre="Ventas");
/* 7 */ SELECT Nombre,Apellido,DNI FROM empleados WHERE Puesto=(SELECT Puesto FROM empleados WHERE Nombre="David" AND Apellido="Austin");
/* 8 */ SELECT Nombre,Apellido,DNI FROM empleados WHERE ID_Departamento=(SELECT ID_Departamentos FROM departamentos WHERE Nombre="Sistemas");


    
    
    
    
    