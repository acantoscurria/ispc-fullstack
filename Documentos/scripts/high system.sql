create database high_sistem;
use high_sistem; 

CREATE TABLE Persona(
	id_dni int NOT NULL PRIMARY KEY,
	Nombre varchar(150) NOT NULL,
	Apellido varchar(150) NOT NULL,
	telefono bigint NOT NULL,
	direccion varchar(200) not NULL,
    barrio varchar(200) not null,
	email varchar(100) NULL);

  CREATE TABLE Empleado(
  id_empleado INT NOT NULL,
  area VARCHAR(45) NULL,
  PRIMARY KEY (id_empleado),
  CONSTRAINT id_personal
    FOREIGN KEY (id_empleado)
    REFERENCES Persona (id_dni)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

CREATE TABLE Cliente(
    id_cliente int not null primary key,
    usuario  varchar(200) not null,
     CONSTRAINT id_persona
    FOREIGN KEY (id_cliente)
    REFERENCES Persona (id_dni)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

CREATE TABLE Pedido(
	codigo_pedido int NOT NULL PRIMARY KEY,
	monto bigint NOT NULL,
	mediodepago varchar(150) NOT NULL,
	fecha date NOT NULL,
	n_de_factura bigint NOT NULL,
	id_cliente int not null,
    index (id_cliente),
	id_hoja int not null,
    index (id_hoja)
);  
alter table Pedido add FOREIGN key (id_cliente) references Cliente(id_cliente);
alter table Pedido add FOREIGN key (id_hoja) references Hoja_de_ruta(id_hoja);
   
 CREATE TABLE Producto(
	id_producto int NOT NULL PRIMARY KEY,
	nombre varchar(150) NOT NULL,
	cantidad bigint NOT NULL,
	marca varchar(150) NOT NULL,
	concepto varchar(200) not null,
    descripcion varchar(200),
    precio bigint NOT NULL,
    id_empleado int not null,
    FOREIGN key (id_empleado) references Empleado(id_empleado),
    id_proveedor int not null,
    FOREIGN key (id_proveedor) references Proveedor(id_proveedor) 
);

CREATE TABLE Hoja_de_ruta(
	id_hoja int NOT NULL PRIMARY KEY,
	id_distribuidor int not null,
    FOREIGN key (id_distribuidor) references Distribuidor(id_distribuidor) 
);

CREATE TABLE Proveedor(
	id_proveedor int NOT NULL PRIMARY KEY,
    cuit bigint NOT NULL,
	Nombre_empresa varchar(150) NOT NULL,
	telefono bigint NOT NULL,
    direccion varchar(200) not null
    );

CREATE TABLE Distribuidor(
	id_distribuidor int NOT NULL PRIMARY KEY,
    patente varchar(200) not null,
	CONSTRAINT id_dis
    FOREIGN KEY (id_distribuidor)
    REFERENCES Persona (id_dni)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);
	

