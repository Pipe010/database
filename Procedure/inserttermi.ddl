CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttermi`(
id tinyint(3) ,
nombre varchar(25) ,
direccion varchar(80) ,
capacidad int(10) ,
Municipioid int(10)
)
BEGIN
insert into terminal (id,nombre,direccion,capacidad,Municipioid) values (id,nombre,direccion,capacidad,Municipioid);
END