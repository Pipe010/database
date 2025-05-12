CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttipo_bus`(
id tinyint(3),
tipo varchar(50)
)
BEGIN
insert into tipo_bus (id,tipo_bus) values (id,tipo_bus);
END