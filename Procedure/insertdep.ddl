CREATE DEFINER=`root`@`localhost` PROCEDURE `insertdep`(
id int(10),
nombre varchar(20)
)
BEGIN
insert into departamento (id,nombre) values (id,nombre);
END