USE `pasajes`;
DROP procedure IF EXISTS `insertbus`;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertbus`(

in placa varchar(7),
in num_serial int(10), 
in color varchar(25), 
in Tipo_busid tinyint(3),
in Empresaid tinyint(3), 
in Conductorid bigint(20)
)
BEGIN
insert into bus (id,placa,num_serial, color,Tipo_busid, Empresaid ,Conductorid) values (id,placa,num_serial, color,Tipo_busid, Empresaid ,Conductorid);
END$$

DELIMITER ;


USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertcondu`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertcondu`(

in nombre varchar(25) ,
in telefono bigint(20) ,
in correo varchar(30)
)
BEGIN
insert into conductor (id,nombre,telefono,correo) values (id,nombre,telefono,correo);
END$$

DELIMITER ;
;
USE `pasajes`;
DROP procedure IF EXISTS `insertdep`;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertdep`(

in nombre varchar(20)
)
BEGIN
insert into departamento (id,nombre) values (id,nombre);
END$$

DELIMITER ;


USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertemp`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertemp`(

in nombre varchar(20), 
in direccion varchar(70), 
in rut bigint(20), 
in telefono bigint(20)
)
BEGIN
insert into empresa (id,nombre,direccion,rut,telefono) values (id,nombre,direccion,rut,telefono);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertlic`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertlic`(

in num int(10), 
in tipo varchar(5), 
in fecha_exp date ,
in infecha_venci date, 
in Conductorid bigint(20)
)
BEGIN
	insert into licencia (id,num,tipo,fecha_exp,fecha_venci,Conductorid) values (id,num,tipo,fecha_exp,fecha_venci,Conductorid);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertmuni`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertmuni`(

in nombre varchar(20) ,
in Departamentoid int(10)
)
BEGIN
insert into municipio (id,nombre,Departamentoid) values (id,nombre,Departamentoid);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertpasa`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertpasa`(

in nombre varchar(20) ,
in apellido varchar(25) ,
in documento int(10) ,
in correo varchar(25) ,
in fecha_nac date ,
in telefono bigint(20) ,
in Ticketid bigint(20) ,
in Tipo_docid tinyint(3)
)
BEGIN
insert into pasajero (id,nombre,apellido,documento,correo,fecha_nac,telefono,Ticketid,Tipo_docid) values (id,nombre,apellido,documento,correo,fecha_nac,telefono,Ticketid,Tipo_docid);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertruta`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertruta`(

in tiempo_aprox time(6) ,
in precio int(10) ,
in distancia int(10) ,
in hora_sal datetime ,
in hora_llegada datetime ,
in origen int(10) ,
in destino int(10) ,
in Empresaid tinyint(3)
)
BEGIN
insert into ruta (id,tiempo_aprox,precio,distancia,hora_sal,hora_llegada,origen,destino,Empresaid) 
values (id,tiempo_aprox,precio,distancia,hora_sal,hora_llegada,origen,destino,Empresaid);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertruta_bus`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertruta_bus`(
in Rutaid bigint(20),
in Busid int(10),
in fechasalida int(11)
)
BEGIN
insert into ruta_bus (Rutaid,Busid,fechasalida) values (Rutaid,Busid,fechasalida);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`inserttermi`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttermi`(

in nombre varchar(25) ,
in direccion varchar(80) ,
in capacidad int(10) ,
in Municipioid int(10)
)
BEGIN
insert into terminal (id,nombre,direccion,capacidad,Municipioid) values (id,nombre,direccion,capacidad,Municipioid);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`inserttermi_emp`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttermi_emp`(
in Terminalid tinyint(3),
in Empresaid tinyint(3),
in N_oficina tinyint(3) ,
in telefono bigint(20)
)
BEGIN
insert into terminal_empresa (Terminalid,Empresaid,N_oficina,telefono) values (Terminalid,Empresaid,N_oficina,telefono);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`insertticket`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertticket`(

in fecha_expe datetime ,
in fecha_venc datetime ,
in Rutaid bigint(20)
)
BEGIN
insert into ticket (id,fecha_expe,fecha_venc,Rutaid) values (id,fecha_expe,fecha_venc,Rutaid);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`inserttipo_bus`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttipo_bus`(

in tipo varchar(50)
)
BEGIN
insert into tipo_bus (id,tipo_bus) values (id,tipo_bus);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `pasajes`.`inserttipo_doc`;
;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttipo_doc`(

in tipo varchar(5)
)
BEGIN
insert into tipo_doc (id,tipo) values (id,tipo);
END$$

DELIMITER ;
;

USE `pasajes`;
DROP procedure IF EXISTS `venderPasaje`;

DELIMITER $$
USE `pasajes`$$
CREATE PROCEDURE `venderPasaje` (
  IN nom VARCHAR(20),
  IN ape VARCHAR(25),
  IN doc INT(10),
  IN co VARCHAR(25),
  IN f_nac DATE,
  IN tel BIGINT(20),
  IN f_ticket BIGINT(20),
  IN f_tipodoc TINYINT(3)
)
BEGIN
  DECLARE nuevoticketID BIGINT(20);
  DECLARE precioticket INT(10);

  SET precioticket = calculaprecio(f_ticket);

  INSERT INTO ticket (fecha_expe, fecha_venc, Rutaid)
    VALUES(NOW(), DATE_ADD(NOW(), INTERVAL 1 DAY), f_ticket);
  SET nuevoticketID = LAST_INSERT_ID();

  INSERT INTO pasajero (nombre, apellido, documento, correo, fecha_nac, telefono, Ticketid, Tipo_docid) 
  VALUES (nom, ape, doc, co, f_nac, tel, nuevoticketID, f_tipodoc);
  
END;$$

DELIMITER ;

USE `pasajes`;
DROP procedure IF EXISTS `asignarBusARuta`;

DELIMITER $$
USE `pasajes`$$
CREATE PROCEDURE `asignarBusARuta` (

	 IN f_bus INT(10),
	 IN f_ruta BIGINT(20)
     
)
BEGIN

	IF NOT estaAsignado(f_bus, f_ruta) THEN
		INSERT INTO ruta_bus(Rutaid, Busid, fechasalida)
		VALUES(f_ruta, f_bus, UNIX_TIMESTAMP());
	END IF;
    
END$$

DELIMITER ;






