CREATE DEFINER=`root`@`localhost` PROCEDURE `insertmuni`(
id int(10),
nombre varchar(20) ,
Departamentoid int(10)
)
BEGIN
insert into municipio (id,nombre,Departamentoid) values (id,nombre,Departamentoid);
END