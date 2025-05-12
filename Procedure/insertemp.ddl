CREATE DEFINER=`root`@`localhost` PROCEDURE `insertemp`(
id tinyint(3),
nombre varchar(20), 
direccion varchar(70), 
rut bigint(20), 
telefono bigint(20)
)
BEGIN
insert into empresa (id,nombre,direccion,rut,telefono) values (id,nombre,direccion,rut,telefono);
END