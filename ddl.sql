-- DROP SCHEMA dbo;

-- productos.dbo.Producto definition

-- Drop table

-- DROP TABLE productos.dbo.Producto;

CREATE TABLE productos.dbo.Producto (
	id int IDENTITY(1,1) NOT NULL,
	nombre varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);

-- productos.dbo.Compra definition

-- Drop table

-- DROP TABLE productos.dbo.Compra;

CREATE TABLE dbo.Compra (
	id int IDENTITY(1,1) NOT NULL,
	total int NULL,
	id_producto int NULL
);


-- productos.dbo.Venta definition

-- Drop table

-- DROP TABLE productos.dbo.Venta;

CREATE TABLE dbo.Venta (
	id int IDENTITY(1,1) NOT NULL,
	producto_id int NULL,
	total int NULL
);
