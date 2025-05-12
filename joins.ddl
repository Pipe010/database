select td.tipo, p.nombre from pasajero as p
join tipo_doc as td on p.Tipo_docid = td.id;

select b.placa, b.color, b.num_serial, tb.tipo from bus as b
join tipo_bus as tb on tb.id = b.id;