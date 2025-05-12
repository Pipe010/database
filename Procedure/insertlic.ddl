CREATE DEFINER=`root`@`localhost` PROCEDURE `insertlic`(
id int(10),
num int(10), 
tipo varchar(5), 
fecha_exp date ,
fecha_venci date, 
Conductorid bigint(20)
)
BEGIN
	insert into licencia (id,num,tipo,fecha_exp,fecha_venci,Conductorid) values (id,num,tipo,fecha_exp,fecha_venci,Conductorid);
END