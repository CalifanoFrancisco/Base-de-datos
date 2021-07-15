CREATE DATABASE miEmpresa0;
USE miEmpesa0;

CREATE TABLE Empleados (
    DNI                 INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Apellido            VARCHAR(50) NOT NULL,
    Nombre              VARCHAR(50) NOT NULL,
    Domicilio           VARCHAR(50) NOT NULL,
    Sector              VARCHAR(50) NOT NULL,
    Telefono_Particular INT NOT NULL,
    Nro_de_Interno      INT NOT NULL,
    Celular             INT NOT NULL,
    Estado_Civil        VARCHAR(50) NOT NULL,
    Hijos               INT,
    Fecha_de_Nacimiento DATE NOT NULL,
    Fecha_de_Ingreso    DATE NOT NULL
);

CREATE TABLE Sueldo (
    Basico       INT NOT NULL,
    Retenciones  INT NOT NULL,
    Asignaciones INT NOT NULL,
    Comisiones   INT NOT NULL,
    Mes          INT NOT NULL,
    Sueldo_Neto  INT NOT NULL
);

CREATE TABLE Productos (
    Descripcion    VARCHAR(50) NOT NULL,
    Stock          INT NOT NULL,
    Stock_min      INT NOT NULL,
    Precio_costo   INT NOT NULL,
    Precio_venta   INT NOT NULL,
    Demora         TIME NOT NULL
);

CREATE TABLE Control_horas (
     Fecha       DATE NOT NULL,
     Hora_Inicio TIME NOT NULL,
     Hora_Fin    TIME NOT NULL
);

/* 4 */ 
INSERT INTO Empleados (Apellido,Nombre,Domicilio,Sector,Telefono_Particular,Nro_de_Interno,Celular,Estado_Civil,Hijos,Fecha_de_Nacimiento,Fecha_de_Ingreso) VALUES
	("Matias","Hernandez","CABA"  ,"Capital"  ,1500000001,1,1600000001,"Casado" ,2,"1985-02-09","2001-02-09"),
	("Marta","Mernandez" ,"Lopez" ,"Capital"  ,1500000002,2,1600000002,"Casado" ,8,"1975-03-06","2001-07-06"),
	("Jose","Jernandez"  ,"Ezeiza","Capital"  ,1500000003,3,1600000003,"Casado" ,3,"1965-04-07","2001-06-05"),
	("Tony","Chavez"     ,"Evita" ,"centro"   ,1500000004,4,1600000004,"Soltero",1,"1987-08-08","2001-05-04"),
	("Mende","Lamima"    ,"CABA"  ,"provincia",1500000005,5,1600000005,"Casado" ,4,"1988-06-10","1995-04-03");
    
INSERT INTO Sueldo (Basico,Retenciones,Asignaciones,Comisiones,Mes,Sueldo_Neto) VALUES 
    (1500,200,300,100,2000,2500),
	(1501,204,301,101,2001,2502),
    (1502,203,302,102,2002,2503),
    (1503,202,303,103,2003,2504),
    (1504,201,304,104,2004,2505);

INSERT INTO Productos (Descripcion,Stock,Stock_min,Precio_costo,Precio_venta,Demora_entrega) VALUES 
    ("Arvejas",10,100,100,200,"01:01:00"),
	("Choclo",20,8,120,210,"01:02:00"),
    ("Maizena",18,1,140,220,"01:03:00"),
    ("Chorizo",12,7,150,230,"01:04:00"),
    ("Helado",99,5,160,400,"01:05:00");
    
INSERT INTO Control_horas(Fecha,Hora_Inicio,Hora_Fin) VALUES
    ("2020-05-01","01:00:00","08:00:00"),
	("2020-06-05","02:00:00","09:00:00"),
    ("2020-07-04","03:00:00","10:00:00"),
    ("2020-08-03","04:00:00","11:00:00"),
    ("2020-09-02","05:00:00","11:30:00");

/*5*/SELECT*FROM empleados WHERE Fecha_de_Ingreso BETWEEN "1995-01-01" AND "1995-12-31";
/*6*/SELECT*FROM empleados WHERE MONTH(Fecha_de_Nacimiento)=10;
/*7*/SELECT*FROM empleados WHERE MONTH(Fecha_de_Nacimiento)=1 AND DAY(Fecha_de_Nacimiento) BETWEEN 1 AND 15;
/*8*/SELECT 2020-YEAR(Fecha_de_Ingreso) FROM empleados;
/*9*/SELECT *, TIME(demora + CURRENT_TIME()) FROM productos WHERE stock <= stock_min;
/*10*/SELECT DATEDIFF("2022-03-31", "2021-06-16");
/*11*/SELECT DATEDIFF("2021-06-19", "2021-06-16");

    



