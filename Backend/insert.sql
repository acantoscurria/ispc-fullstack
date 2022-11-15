INSERT INTO Persona(id_dni, Nombre, Apellido, telefono, direccion, barrio, email)
VALUES 
('35030721', 'Juan', 'Ledesma', '3515142971', 'Av. Jorge Ohm 5890, Cordoba, Cordoba', 'barrio jardin', 'jledesma@gmail.com'),
('34365128', 'Pablo ', 'Espinoza', '3512513356','Estanislao Learte 1724, Cordoba, Cordoba', 'barrio nueva cordoba', 'pespinoza@gmail.com'),
('1234567', 'Pedro', 'Perez', '3512276890', 'Rio negro 2886, Cordoba, Cordoba', 'barrio cofico', 'pedrop@gmail.com'),
('26723238', 'Patricia', 'Caro', '3518756432', 'Obispo Maldonaro 4948, Cordoba, Cordoba', 'barrio yofre', 'pcaro@gmail.com'),
('22565940', 'Vanesa', 'Toselli', '35148271050', 'Ferroviarios 1500, Cordoba, Cordoba', 'barrio ituzaingo','vtoselli@gmail.com'),
('16292056', 'Carlos', 'Truchi', '3511850866', 'Cleto aguirre 5024, Cordoba, Cordoba', 'barrio villa belgrano', 'ctrcchi66@gmail.com'),
('22103602', 'Claudia', 'Peretto', '3512689663', 'Arauco 669, Cordoba, Cordoba', 'barrio santa isabel', 'perettoclau@gmail.com'),
('22562479', 'Julio,', 'Abran', '3514703087', 'Camilo isleño 4899, Cordoba, Cordoba', 'barrio norte', 'abranjulio@gmail.com'),
('18014854', 'Eva', 'Iglesias', '3519943274', 'Quirno costa 449, Cordoba, Cordoba', 'barrio ituzaingo', 'eviglesias@gmail.com'),
('21753817', 'Luis', 'Salas', '3517972600', 'Henry aran 2838, Cordoba, Cordoba', 'barrio los naranjos', 'salasluisito@gmail.com');

INSERT INTO Empleado (id_empleado, area)
VALUES 
('35030721', 'logistica'),
('34365128', 'ventas'),
('1234567','administracion'),
('26723238', 'logistica');

INSERT INTO Cliente(id_cliente, usuario)
VALUES 
('22565940', 'DespensaVane'),
('16292056', 'Trucchic'),
('22103602', 'ClauPeretto'),
('22562479', 'Julioa79'),
('18014854', 'Kiosco8y8'),
('21753817', 'Luisitos');

INSERT INTO Pedido (codigo_pedido, monto, mediodepago, fecha, n_de_factura, id_cliente, id_hoja)
value
('1', '180600', 'tarjeta de credito', '2022-10-07', '000100000001','22565940','1'),
('2', '25390', 'tranferencia bancaria', '2022-10-10', '000100000002', '16292056','2'),
('3', '470670', 'trajeta de debito', '2022-10-12', '000100000003','18014854', '3'),
('4', '895623', 'efectivo', '2022-10-12', '000100000004','22565940','4');

INSERT INTO Distribuidor (id_distribuidor, patente)
value 
('35030721', 'TUT 684'),
('26723238', 'PIK 747');

INSERT INTO Hoja_de_ruta(id_hoja, id_distribuidor)
value
('1','35030721'),
('2','26723238'),
('3', '35030721'),
('4', '35030721');

INSERT INTO Producto (id_producto, nombre, cantidad, marca, concepto, descripcion, precio, id_empleado, id_proveedor)
value
('1', 'gaseosa', '300', 'coca cola', 'comun','botella retonable 2L', '250', '26723238', '1'),
('2', 'cerveza', '250', 'andes', 'rubia', 'latas', '183', '26723238','2'),
('3', 'gaseosa', '100', 'coca cola', 'comun','botella 2L', '300', '35030721', '1'),
('4', 'gaseosa', '150', 'coca cola', 'comun','latas', '150', '26723238', '1'),
('5', 'bebida alcoholica', '350', 'fernet branca', 'negro', 'botella 750ml', '1700', '26723238','2'),
('6', 'bebida alcoholica', '100', 'sky', 'vodka', 'botella 750ml, sabor apricot', '1300', '26723238','2'),
('7', 'agua saborizada', '250', 'awafrut', 'naranja', 'botella 2,25L', '233','26723238','1');

insert into Proveedor (id_proveedor, cuit, Nombre_empresa, telefono, direccion)
value 
('1', '30529135943',  'Embotelladora del Atlántico S.A', '03514968800', 'Ruta Nacional Nº 19 km 3,7, Cordoba'),
('2', '33508358259', 'CERVECERIA Y MALTERIA QUILMES SAICA Y G','03514140812' ,'Avenida Juan B. Justo 5600, Córdoba');

