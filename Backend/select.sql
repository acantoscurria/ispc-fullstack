select *from Persona;
select *from Cliente;
select *from Producto;
select *from Proveedor;
select *from distribuidor;
select *from pedido;
select *from empleado;
select *from hoja_de_ruta;

select *from pedido where id_cliente='22565940';
select *from hoja_de_ruta where id_distribuidor='35030721';
select *from producto where id_proveedor='33508358259';
select *from pedido where fecha='2022-10-12';
select cliente from persona where barrio='barrio ituzaingo';

select *from pedido where monto>'100000';
select max(monto) from pedido;
select min(monto) from pedido;

select max(precio), marca from producto;
select min(precio), marca, concepto from producto;

select * from empleado inner join persona
on empleado.id_empleado=persona.id_dni;

select * from cliente inner join persona
on cliente.id_cliente=persona.id_dni;

select id_cliente,barrio from cliente inner join persona 
on cliente.id_cliente=persona.id_dni;

select id_cliente,monto from pedido inner join cliente
on pedido.id_cliente=cliente.id_cliente;




