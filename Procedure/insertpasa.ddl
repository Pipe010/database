CREATE DEFINER=`root`@`localhost` PROCEDURE `insertpasa`(
id int(10),
nombre varchar(20) ,
apellido varchar(25) ,
documento int(10) ,
correo varchar(25) ,
fecha_nac date ,
telefono bigint(20) ,
Ticketid bigint(20) ,
Tipo_docid tinyint(3)
)
BEGIN
insert into pasajero (id,nombre,apellido,documento,correo,fecha_nac,telefono,Ticketid,Tipo_docid) values (id,nombre,apellido,documento,correo,fecha_nac,telefono,Ticketid,Tipo_docid);
END