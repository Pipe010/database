DROP DATABASE IF EXISTS pasajes;
create database pasajes;
use pasajes;
CREATE TABLE Bus (
	id int(10) NOT NULL AUTO_INCREMENT,
    placa varchar(7) NOT NULL UNIQUE,
    num_serial int(10) NOT NULL UNIQUE,
    color varchar(25) NOT NULL,
    Tipo_busid tinyint(3) NOT NULL,
    Empresaid tinyint(3) NOT NULL,
    Conductorid bigint(20) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE Ruta (
	id bigint(20) NOT NULL AUTO_INCREMENT, 
    tiempo_aprox time(6) NOT NULL, 
    precio int(10) NOT NULL, 
    distancia int(10) NOT NULL,
    hora_sal datetime NOT NULL,
    hora_llegada datetime NOT NULL,
    origen int(10) NOT NULL, 
    destino int(10) NOT NULL,
    Empresaid tinyint(3) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Empresa (
	id tinyint(3) NOT NULL AUTO_INCREMENT,
    nombre varchar(20) NOT NULL, 
    direccion varchar(70) NOT NULL,
    rut bigint(20) NOT NULL UNIQUE,
    telefono bigint(20) NOT NULL UNIQUE, 
    PRIMARY KEY (id)
    );
CREATE TABLE Municipio (
	id int(10) NOT NULL AUTO_INCREMENT,
    nombre varchar(20) NOT NULL,
    Departamentoid int(10) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Tipo_bus (
	id tinyint(3) NOT NULL AUTO_INCREMENT,
    tipo varchar(50) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Pasajero (
	id int(10) NOT NULL AUTO_INCREMENT,
    nombre varchar(20) NOT NULL, 
    apellido varchar(25) NOT NULL,
    documento int(10) NOT NULL UNIQUE,
    correo varchar(25) NOT NULL, 
    fecha_nac date NOT NULL, 
    telefono bigint(20) NOT NULL UNIQUE, 
    Ticketid bigint(20) NOT NULL, 
    Tipo_docid tinyint(3) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Tipo_doc (
	id tinyint(3) NOT NULL AUTO_INCREMENT,
    tipo varchar(5) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Departamento (
	id int(10) NOT NULL AUTO_INCREMENT,
    nombre varchar(20) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Terminal (
	id tinyint(3) NOT NULL AUTO_INCREMENT,
    nombre varchar(25) NOT NULL,
    direccion varchar(80) NOT NULL,
    capacidad int(10) NOT NULL,
    Municipioid int(10) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Ticket (
	id bigint(20) NOT NULL AUTO_INCREMENT,
    fecha_expe datetime NOT NULL,
    fecha_venc datetime NOT NULL,
    Rutaid bigint(20) NOT NULL, 
    PRIMARY KEY (id)
    );
CREATE TABLE Conductor (
	id bigint(20) NOT NULL AUTO_INCREMENT,
    nombre varchar(25) NOT NULL, 
    telefono bigint(20) NOT NULL UNIQUE, 
    correo varchar(30) NOT NULL,
    PRIMARY KEY (id)
    );
CREATE TABLE Licencia (
	id int(10) NOT NULL AUTO_INCREMENT,
    num int(10) NOT NULL UNIQUE, 
    tipo varchar(5) NOT NULL, 
    fecha_exp date NOT NULL,
    fecha_venci date NOT NULL, 
    Conductorid bigint(20) NOT NULL, 
    PRIMARY KEY (id)
    );
CREATE TABLE Ruta_Bus (
	Rutaid bigint(20) NOT NULL, 
    Busid int(10) NOT NULL, 
    fechasalida int(11) NOT NULL, 
    PRIMARY KEY (Rutaid, Busid)
    );
CREATE TABLE Terminal_Empresa (
	Terminalid tinyint(3) NOT NULL,
    Empresaid tinyint(3) NOT NULL,
    N_oficina tinyint(3) NOT NULL,
    telefono bigint(20) NOT NULL, 
    PRIMARY KEY (Terminalid, Empresaid)
    );
CREATE TABLE LogVentas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  ticket_id BIGINT(20),
  fecha DATETIME,
  monto INT(10)
);
CREATE TABLE LogAsignaciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  bus_id INT(10),
  ruta_id BIGINT(20),
  fecha_asignacion DATETIME
);
ALTER TABLE Bus ADD CONSTRAINT FKBus_tp_bus FOREIGN KEY (Tipo_busid) REFERENCES Tipo_bus (id);
ALTER TABLE Bus ADD CONSTRAINT FKBus_Emp FOREIGN KEY (Empresaid) REFERENCES Empresa (id);
ALTER TABLE Municipio ADD CONSTRAINT FKMunicipio_Dep FOREIGN KEY (Departamentoid) REFERENCES Departamento (id);
ALTER TABLE Pasajero ADD CONSTRAINT FKPasajero_Tp_Doc FOREIGN KEY (Tipo_docid) REFERENCES Tipo_doc (id);
ALTER TABLE Terminal ADD CONSTRAINT FKTerminal_Mun FOREIGN KEY (Municipioid) REFERENCES Municipio (id);
ALTER TABLE Pasajero ADD CONSTRAINT FKPasajero_Ticket FOREIGN KEY (Ticketid) REFERENCES Ticket (id);
ALTER TABLE Licencia ADD CONSTRAINT FKLicencia_Condu FOREIGN KEY (Conductorid) REFERENCES Conductor (id);
ALTER TABLE Bus ADD CONSTRAINT FKBus_Condu FOREIGN KEY (Conductorid) REFERENCES Conductor (id);
ALTER TABLE Ruta ADD CONSTRAINT FKRuta_Org FOREIGN KEY (origen) REFERENCES Municipio (id);
ALTER TABLE Ruta ADD CONSTRAINT FKRuta_Des FOREIGN KEY (destino) REFERENCES Municipio (id);
ALTER TABLE Ruta ADD CONSTRAINT FKRuta_Emp FOREIGN KEY (Empresaid) REFERENCES Empresa (id);
ALTER TABLE Ruta_Bus ADD CONSTRAINT FKRuta_Bus_Ruta FOREIGN KEY (Rutaid) REFERENCES Ruta (id);
ALTER TABLE Ruta_Bus ADD CONSTRAINT FKRuta_Bus_Bus FOREIGN KEY (Busid) REFERENCES Bus (id);
ALTER TABLE Terminal_Empresa ADD CONSTRAINT FKTerminal_Emp_Ter FOREIGN KEY (Terminalid) REFERENCES Terminal (id);
ALTER TABLE Terminal_Empresa ADD CONSTRAINT FKTerminal_Emp_Emp FOREIGN KEY (Empresaid) REFERENCES Empresa (id);
ALTER TABLE Ticket ADD CONSTRAINT FKTicket_Ruta FOREIGN KEY (Rutaid) REFERENCES Ruta (id);

/*Crear git */