CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttipo_doc`(
id tinyint(3),
tipo varchar(5)
)
BEGIN
insert into tipo_doc (id,tipo) values (id,tipo);
END