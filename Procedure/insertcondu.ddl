CREATE DEFINER=`root`@`localhost` PROCEDURE `insertcondu`(
id bigint(20),
nombre varchar(25) ,
telefono bigint(20) ,
correo varchar(30)
)
BEGIN
insert into conductor (id,nombre,telefono,correo) values (id,nombre,telefono,correo);
END