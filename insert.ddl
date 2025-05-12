use pasajes;

INSERT INTO Empresa VALUES (1,"CootransFusa", "Carrera 4 #65-4",8906003238,3216895769),
(2,"Rapido Tolima","calle 65 #32-8",2569831586,3659845213),
(3,"Expreso Bolivariano","carrera 12 #43-9",2365899845,3102653665);
select * from empresa;
insert into conductor values (1023568956,"pepe",3165985296,"pepe@hotmail.com"),  (1023552956,"pedro",3285968554,"pedro@gmail.com"), (206396851,"edgar",3174968574,"edgar@gmail.com");
select * from conductor;
 insert into departamento values (1,"Cundinamarca"),(2,"Antioquia"),(3,"Arauca");
  select * from departamento;
   insert into municipio values (1,"Bogota",1), (2,"Medellin",3),(3,"Facatativa",2);
 select * from municipio;
insert into terminal values (1,"Soledad","calle 43 #12-5",20,2)
 , (2,"Socorro","carrera 20 #34-7",30,1),
 (3,"Facatativa","calle 1 # 22-3",36,2);
 select * from terminal;
 insert into tipo_bus values (1,"Microbuses"),(2,"Busetas"),(3,"Buses");
  select * from tipo_bus;
 insert into tipo_doc values (1,"CC"),(2,"CE"),(3,"TI");
 select * from tipo_doc;
  insert into ruta values (1,"10:10:10",20000,100,"10-10-10 10:50:32","10/10/18",2,1,2),
  (2,"11:11:11",20000,100,"11-11-11 10:50:32","10/10/19",2,1,3),
  (3,"12:12:12",20000,100,"12-12-12 10:50:32","10/10/20",2,1,1);
  select * from ruta;
 insert into ticket values (1,"12-12-12 06:06:06","12/12/12 06:06:06",2),(2,"19-11-19 02:02:02","20-09-20 01:01:01",3),(3,"21-03-21 03:03:03","21-04-21 16:16:16",1);
 select * from ticket;
insert into bus values (1,"MJE009",983647282,"ROJO",3,1,1023568956), (2,"OYT854",92226547,"VERDE",2,2,1023552956), (3,"KJH777",924895763,"AZUL",1,1,206396851);
select * from bus;
insert into tipo_licencia values (1,"C1"),(2,"C2"),(3,"C3");
select	* from tipo_licencia;
insert	into licencia values (108576395,1,"17-17-17", "08-08-08",2),(1123659874,2,"12-12-12", "09-09-09",1 ),(1532569852,2,"11-11-11", "07-07-07",1); 
select	* from licencia;
call insertpasa (1,"pepe","pascal",1023569836,"fhgdffhgdf@fghfgh","10-10-10",3176646074,1,2);